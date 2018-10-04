#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
	int max_args = 15;
	int max_argv_size = max_args + 2;
	char* cmd;
	char* res;
	char* my_argv[max_argv_size];

	int input_size = 128;
	char char_read[input_size];

	printf("Enter some text: ");
	fgets(char_read, 128, stdin);
	char* stripped_string = strtok(char_read, "\n");

	res = strtok(stripped_string, " ");
	cmd = res;
	my_argv[0] = cmd;
	int i = 1;
	while(res != NULL) {
		res = strtok(NULL, " ");
		my_argv[i] = res;
		i++;
	}
	my_argv[i] = '\0';

	execvp(cmd, my_argv);

	return 0;
}
