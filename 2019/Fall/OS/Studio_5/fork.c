#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char* argv[]) {
	int pid = fork();
	waitpid(pid, NULL, 0);
	if (pid != 0) {
		int ppid = getpid();
		printf("Parent PID: %d\n", ppid);
	}
	if (pid == 0) {
		// sleep(3);
		int ppid = getpid();
		printf("Child PID: %d\n", ppid);
	}

	char* child_argv[] = {"ls", "-l", NULL};
	char* child_prog = child_argv[0];

	execvp(child_prog, child_argv);

	return 0;
}
