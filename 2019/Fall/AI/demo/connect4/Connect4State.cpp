#include "Connect4State.h"

#include <iostream>

Connect4State::Connect4State() : _turn(0), _red(0), _yellow(0) {}

bool Connect4State::getRed(int r, int c) const {
  return (_red & (1ULL << (7 * r + c))) != 0;
}

bool Connect4State::getYellow(int r, int c) const {
  return (_yellow & (1ULL << (7 * r + c))) != 0;
}

int Connect4State::getTurn() const {
  return _turn;
}

std::vector<int> Connect4State::actions() {
  std::vector<int> possible;
  for (int c = 0; c < 7; c++)
    if (getRed(5, c) == false && getYellow(5, c) == false)
      possible.push_back(c);
  
  for (int i=0; i<possible.size(); i++) {
    int j = rand() % possible.size();
    int t = possible[i];
    possible[i] = possible[j];
    possible[j] = t;
  }
  return possible;
}

void Connect4State::apply(int action) {
  int lowest = 0;
  while (getRed(lowest, action) || getYellow(lowest, action))
    lowest++;

  if (_turn % 2 == 0)
    _red |= 1ULL << (7 * lowest + action);
  else
    _yellow |= 1ULL << (7 * lowest + action);

  _turn++;
}

Connect4State Connect4State::result(int action) const {
  auto newState {*this};
  newState.apply(action);
  return newState;
}

int Connect4State::winner() const {
  for (int player : {-1, 1}) {
    uint64_t position;
    if (player == 1)
      position = _red;
    else
      position = _yellow;

    // Check for horizontal connect four
    uint64_t current = position;
    for (int i = 0; i < 3; i++) {
      current <<= 1;
      current &= 0b0111111ULL * (1ULL + (1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL
                                          << 28) + (1ULL << 35));
      current &= position;
    }

    if (__builtin_popcountll(current) > 0) {
      return player;
    }

    // Check for vertical connect four
    current = position;
    for (int i = 0; i < 3; i++) {
      current <<= 7;
      current &= 0b1111111ULL *
                 ((1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL << 28) + (1ULL << 35));
      current &= position;
    }

    if (__builtin_popcountll(current) > 0) {
      return player;
    }

    // Check for upward diagonal connect four
    current = position;
    for (int i = 0; i < 3; i++) {
      current <<= 8;
      current &= 0b0111111ULL *
                 ((1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL << 28) + (1ULL << 35));
      current &= position;
    }

    if (__builtin_popcountll(current) > 0) {
      return player;
    }

    // Check for downward diagonal connect four
    current = position;
    for (int i = 0; i < 3; i++) {
      current >>= 6;
      current &=
          0b0111111ULL * (1ULL + (1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL << 28));
      current &= position;
    }

    if (__builtin_popcountll(current) > 0) {
      return player;
    }
  }

  return 0;
}

bool Connect4State::gameOver() const {
  if (_red + _yellow == (1ULL << 42) - 1)
    return true;
  if (winner() != 0)
    return true;
  return false;
}

std::tuple<int, uint64_t, uint64_t> Connect4State::getState() const {
  return std::make_tuple(_turn, _red, _yellow);
}

void Connect4State::display() const {
  for (int r = 5; r >= 0; r--) {
    for (int c = 0; c < 7; c++) {
      if (getRed(r, c))
        std::cout << "R";
      else if (getYellow(r, c))
        std::cout << "Y";
      else
        std::cout << " ";
    }
    std::cout << std::endl;
  }
}
