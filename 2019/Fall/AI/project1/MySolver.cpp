//#include <algorithm>
// #include <iostream>
#include <cmath>
#include <queue>

#include "MySolver.h"

MySolver::MySolver(int size, std::vector<int> puzzle) : Solver(size, puzzle) {}

void MySolver::init() {
}

std::string MySolver::mySolution() {
  int h = _heuristic(_puzzle.getInitial());
  Node initial(_puzzle.getInitial(), "");

  auto initialTuple = std::make_tuple(h, initial);
  _frontier.push(initialTuple);

  int count = 0;

  while (!_frontier.empty()) {
    ++count;

    Node current = std::get<1>(_frontier.top());
    _frontier.pop();

    // Check if we have reached the goal
    if (_puzzle.isGoal(current.getState()))
      return current.getPath();

    // _expand adds unexpanded neighbors to the frontier
    _expand(current);
  }

  return "";
}

int MySolver::_heuristic(const std::vector<int> state) const {
  // Implement this for use in your informed search your informed search
  int h = 0;

  for(int i = 0; i < state.size(); ++i) {
    if(state[i] != 0)
       h += manhattDist(i, state[i], _size);;
  }

  return h;
}

void MySolver::_expand(Node &node) {
  std::vector<int> state = node.getState();
  if (_expanded.find(state) != _expanded.end())
    return;
  ++_numExpansions;
  _expanded.insert(state);

  for (auto action : _puzzle.actions(state)) {
    auto newState = _puzzle.result(state, action);

    if (_expanded.find(newState) == _expanded.end()) {
      Node newNode(newState, node.getPath() + action);

      // The following line will probably need to be changed
      // depending on the data structure you use for _frontier.
      // Do not make any other changes to this function.
      _frontier.push(std::make_tuple(_heuristic(newState), newNode));
    }
  }
}

bool operator>(const std::tuple<int,Node>& first, const std::tuple<int,Node>& second) {
  return std::get<0>(first) > std::get<0>(second);
}

int manhattDist(int loc, int dest, int size) {
  return std::abs(loc / size - dest / size) + std::abs((loc%size) - (dest%size));
}
