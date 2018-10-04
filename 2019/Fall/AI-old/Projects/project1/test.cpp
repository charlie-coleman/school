#include <algorithm>
#include <iostream>
#include <cmath>
#include <queue>

int heuristic(std::vector<int> state) {
  int h = 0;
  int _size = 3;
  for (int i = _size-1; i < state.size() - 1; i += _size) {
    h = h + std::abs(state[i] - i);
  }
  return h;
}

int main() {
  std::vector<int> test;

  test.push_back(0);
  test.push_back(1);
  test.push_back(3);

  test.push_back(2);
  test.push_back(5);
  test.push_back(4);

  test.push_back(6);
  test.push_back(7);
  test.push_back(8);

  for(int i = 0; i < 9; i++) {
    std::cout << test[i] << " ";
    if(i % 3 == 2) std::cout << std::endl;
  }

  std::cout << heuristic(test) << std::endl;
}
