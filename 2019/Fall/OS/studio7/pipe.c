#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
	int fd[2];
	pipe(fd);
	int pid = fork();
	if (pid == 0) { // Child Process
		dup2(fd[0], STDIN_FILENO);
		sleep(0.1);
		char* cmd = "./program1";
		char* my_argv[] = {"./program1", '\0'};
		int ret = execvp(cmd, my_argv);
		if (ret == -1) perror("Error exec'ing program1");
	} else {
		dup2(fd[1], STDIN_FILENO);
		char* cmd = "./program2";
		char* my_argv[] = {"./program2", '\0'};
		int ret = execvp(cmd, my_argv);
		if (ret == -1) perror("Error exec'ing program2");
	}
}
