#include <queue>
#include <iostream>
#include <cmath>

int manhattDist(int loc, int dest, int size) {
  return std::abs((loc - (loc % size)) / size - (dest - (dest % size)) / size) + std::abs((loc%size) - (dest%size));
}

int main() {
  std::cout << "0 -> 1: " << manhattDist(0, 1, 3) << std::endl;
  std::cout << "3 -> 2: " << manhattDist(3, 2, 3) << std::endl;
  std::cout << "8 -> 0: " << manhattDist(8, 0, 3) << std::endl;
}
