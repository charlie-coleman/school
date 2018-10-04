#pragma once

#include <memory>
#include <string>

#include "Node.h"
#include "SlidingTilePuzzle.h"
class Node;
#include "MySolver.h"

class Node {
public:
  Node(std::vector<int> state, std::string path);

  const std::vector<int> &getState() const;
  std::string getPath() const;

  friend class MySolver;

private:
  std::vector<int> _state;
  std::string _path;
};
