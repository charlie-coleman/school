#include "Connect4State.h"

#include <iostream>

class MinMaxRandomLegalHeuristicD4 {
public:
  int getMove(Connect4State state);
  int maxValue(Connect4State state, int depth);
  int minValue(Connect4State state, int depth);
  int patternCount(Connect4State state, std::vector<int> pattern);
  int heuristic(Connect4State state);
};

int MinMaxRandomLegalHeuristicD4::getMove(Connect4State state) {
  auto actions = state.actions();
  
  if (state.getTurn() % 2 == 0) {  // Max player
    //std::cout << "Max player" << std::endl;
    int maxValue = -10000;
    int move=-1;
    for (auto a : actions) {
      auto val = minValue(state.result(a),3);
      //std::cout << a << "\t" << val << std::endl;
      if (val > maxValue) {
        maxValue = val;
        move = a;
      }
    }
        
    return move;
  }  
  
  // Min player
  //std::cout << "Min player" << std::endl;
  int minValue = 10000;
  int move=-1;
  for (auto a : actions) {
    auto val = maxValue(state.result(a),3);
    //std::cout << a << "\t" << val << std::endl;
    if (val < minValue) {
      minValue = val;
      move = a;
    }
  }
      
  return move;
}

int MinMaxRandomLegalHeuristicD4::maxValue(Connect4State state, int depth) {
  if (state.gameOver())
    return 1000*state.winner();
    
  if (depth == 0)
    return heuristic(state);
    
  int maxValue = -10000;
  auto actions = state.actions();
  
  for (auto a : actions) {
    maxValue = std::max(maxValue, minValue(state.result(a), depth-1));
  }
  
  return maxValue;
}

int MinMaxRandomLegalHeuristicD4::minValue(Connect4State state, int depth) {
  if (state.gameOver())
    return 1000*state.winner();
    
  if (depth == 0)
    return heuristic(state);
    
  int minValue = 10000;
  auto actions = state.actions();
  
  for (auto a : actions) {
    minValue = std::min(minValue, maxValue(state.result(a), depth-1));
  }
  
  return minValue;
}

int MinMaxRandomLegalHeuristicD4::patternCount(Connect4State state, std::vector<int> sequence) {
  int count = 0;
  uint64_t pattern;
  
  // Horizontal
  pattern = (1ULL << 42) - 1;
  for (int i=0; i<sequence.size(); i++) {
    auto c = sequence[i];
    switch (c) {
      case 1:
        pattern &= std::get<1>(state.getState());
        break;
      case -1:
        pattern &= std::get<2>(state.getState());
        break;
      case 0:
        pattern &= (1ULL << 42) - 1 - (std::get<1>(state.getState()) | std::get<2>(state.getState()));
        break;
    }
        
    if (i < sequence.size()-1) {
      pattern <<= 1;
      pattern &= 0b0111111ULL * (1ULL + (1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL
                                          << 28) + (1ULL << 35));
    }
  }
  count += __builtin_popcountll(pattern);
  
  
  // Vertical
  pattern = (1ULL << 42) - 1;
  for (int i=0; i<sequence.size(); i++) {
    auto c = sequence[i];
    switch (c) {
      case 1:
        pattern &= std::get<1>(state.getState());
        break;
      case -1:
        pattern &= std::get<2>(state.getState());
        break;
      case 0:
        pattern &= (1ULL << 42) - 1 - (std::get<1>(state.getState()) | std::get<2>(state.getState()));
        break;
    }
        
    if (i < sequence.size()-1) {
      pattern <<= 7;
      pattern &= 0b1111111ULL *
                 ((1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL << 28) + (1ULL << 35));
    }
  }
  count += __builtin_popcountll(pattern);
  
  // Upward diagonal
  pattern = (1ULL << 42) - 1;
  for (int i=0; i<sequence.size(); i++) {
    auto c = sequence[i];
    switch (c) {
      case 1:
        pattern &= std::get<1>(state.getState());
        break;
      case -1:
        pattern &= std::get<2>(state.getState());
        break;
      case 0:
        pattern &= (1ULL << 42) - 1 - (std::get<1>(state.getState()) | std::get<2>(state.getState()));
        break;
    }
        
    if (i < sequence.size()-1) {
      pattern <<= 8;
      pattern &= 0b0111111ULL *
                 ((1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL << 28) + (1ULL << 35));
    }
  }
  count += __builtin_popcountll(pattern);
  
  // Downward diagonal
  pattern = (1ULL << 42) - 1;
  for (int i=0; i<sequence.size(); i++) {
    auto c = sequence[i];
    switch (c) {
      case 1:
        pattern &= std::get<1>(state.getState());
        break;
      case -1:
        pattern &= std::get<2>(state.getState());
        break;
      case 0:
        pattern &= (1ULL << 42) - 1 - (std::get<1>(state.getState()) | std::get<2>(state.getState()));
        break;
    }
        
    if (i < sequence.size()-1) {
      pattern >>= 6;
      pattern &= 0b0111111ULL * (1ULL + (1ULL << 7) + (1ULL << 14) + (1ULL << 21) + (1ULL << 28));
    }
  }
  count += __builtin_popcountll(pattern);
  
  return count;
}

int MinMaxRandomLegalHeuristicD4::heuristic(Connect4State state) {
  if (state.gameOver())
    return 1000*state.winner();
    
  int total = 0;
  
  for (int i=0; i<50; i++) {
    //std::cout << "Pass " << i << std::endl;
    Connect4State tempState{state};
    while (!tempState.gameOver()) {
      auto actions = tempState.actions();
      int a = actions[rand() % actions.size()];
      //std::cout << a << std::endl;
      tempState.apply(a);
      //std::cout << "Applied" << std::endl;
      //tempState.display();
    }
    //std::cout << "Evaluating winner" << std::endl;
    total += tempState.winner();
    //std::cout << "Total " << total << std::endl;
  }
  
  
  return total;
}
    
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <vector>

PYBIND11_MODULE(MinMaxRandomLegalHeuristicD4, m) {
  pybind11::class_<MinMaxRandomLegalHeuristicD4>(m, "MinMaxRandomLegalHeuristicD4")
      .def(pybind11::init<>())
      .def("getMove", &MinMaxRandomLegalHeuristicD4::getMove);
}
