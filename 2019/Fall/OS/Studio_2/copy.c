#define buffer_size 200

#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
  char buffer[buffer_size];
  char* lastChar;
  int count = 0;
  while (1) {
    int bread = read(STDIN_FILENO, lastChar, 1);
    if(bread == 0) {
      break;
    }
    buffer[count] = (*lastChar);
    count = count + bread;
  }
  write(STDOUT_FILENO, buffer, count);
}
