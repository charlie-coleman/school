// Charlie Coleman
// 2018-08-29
// Hello World

#include <unistd.h>

int main() {
    char buffer[] = "Hello, World!\n";
    write(1, buffer, 14);
    return 0;
}
