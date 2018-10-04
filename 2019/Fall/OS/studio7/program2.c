#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
	char char_buffer[128];
	char* output;
	do {
		output = fgets(char_buffer, 128, stdin);
		printf("Program 2 got: %s\n", char_buffer);
	} while (output != NULL);
	return 0;
}
