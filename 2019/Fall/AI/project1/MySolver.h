#pragma once

#include <queue>

#include "Node.h"
#include "Solver.h"

class MySolver : public Solver {
public:
  MySolver(int size, std::vector<int> puzzle);
  void init();
  std::string mySolution();

private:
  void _expand(Node &node);
  int _heuristic(const std::vector<int> state) const;

  // Change this to whatever data stucture you need.  However make
  // sure to keep the type mutable to do interfere with const-correctness.
  mutable std::priority_queue<std::tuple<int, Node>, std::vector<std::tuple<int, Node>>, std::greater<std::tuple<int, Node>>> _frontier;
};

bool operator>(const std::tuple<int,Node>&, const std::tuple<int,Node>&);
int manhattDist(const int, const int, const int);
