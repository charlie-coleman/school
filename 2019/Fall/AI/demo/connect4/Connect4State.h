#pragma once

#include <tuple>
#include <vector>

class Connect4State {
public:
  Connect4State();

  bool getRed(int r, int c) const;
  bool getYellow(int r, int c) const;
  int getTurn() const;

  std::vector<int> actions();
  void apply(int action);
  Connect4State result(int action) const;

  int winner() const; // 1 = Red, 0 = draw, -1 = yellow
  bool gameOver() const;

  std::tuple<int, uint64_t, uint64_t> getState() const;

  void display() const;

private:
  int _turn; // Red goes first
  uint64_t _red, _yellow;
};
