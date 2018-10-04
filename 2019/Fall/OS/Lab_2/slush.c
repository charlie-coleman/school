#define WRITE_END 1
#define READ_END 0
#define SIGINT 2

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/wait.h>

void handle_sigint(int sig) {
    getpid();
    // printf("\nPID: %d\n", getpid());
    return;
}

void call_command_string(char* comm_string) {
    int max_args = 15;
    int max_argv_size = max_args + 2;
    char* my_argv[max_argv_size];
    char* cmd;
    char* res;
    // printf("%s\n", comm_string);

    res = strtok(comm_string, " ");
    cmd = res;
    my_argv[0] = cmd;
    int i = 1;
    while(res != NULL) {
        res = strtok(NULL, " ");
        my_argv[i] = res;
        i++;
    }
    my_argv[i] = '\0';
    if (strcmp(cmd, "cd") == 0) {
        if(chdir(my_argv[1]) == -1) perror("chdir");
    } else {
        int ret = execvp(cmd, my_argv);
        if (ret == -1) perror("Error");
    }
}

void tokenize_string(char* input_string, char* comm_strings[], int* len) {
    char* res;
    res = strtok(input_string, "(");
    comm_strings[0] = res;
    int i = 1;
    while(res != NULL) {
        res = strtok(NULL, "(");
        comm_strings[i] = res;
        i++;
    }
    *len = i-1;
}

void pipe_commands(char* comm_strings[], int pos, int in_fd) {
    int fd[2];
    if(pos == 0) {
        dup2(in_fd, STDIN_FILENO);
        //signal(SIGINT, handle_sigint);
        call_command_string(comm_strings[pos]);
    } else {
        int fd[2];
        if(pipe(fd) == -1) perror("pipe");
        int pid = fork();
        if(pid == -1) perror("fork");
        else if(pid == 0) {
            close(fd[0]);
            dup2(in_fd, STDIN_FILENO);
            dup2(fd[1], STDOUT_FILENO);
            //signal(SIGINT, handle_sigint);
            call_command_string(comm_strings[pos]);
        } else {
            close(fd[1]);
            close(in_fd);
            pipe_commands(comm_strings, pos-1, fd[0]);
        }
    }
}

int main(int argc, char* argv[]) {
    int buffer_size = 256;
    char input[buffer_size];
    char* stripped_string;
    int* status;

    char working_dir[buffer_size];
    char* home = getenv("HOME");

    int max_comm_strings = 15;
    int num_commands;
    char* command_strings[max_comm_strings];
    int cont = 1;

    signal(SIGINT, handle_sigint);
    do {
        getcwd(working_dir, buffer_size);
	int is_past_home = (strncmp(working_dir, home, strlen(home)) == 0);
        int add = (is_past_home) ? strlen(home) : 0;
        char extra = (is_past_home) ? '~' : ' ';
        printf("slush|%c%s> ", extra, (working_dir + add));
        if(fgets(input, buffer_size, stdin) == 0) {
            printf("\n");
            return 0;
        }
        if(strlen(input) < 2) continue;
        stripped_string = strtok(input, "\n");

        tokenize_string(stripped_string, command_strings, &num_commands);
        if (num_commands > max_comm_strings) {
            fprintf(stderr, "Error: Too many commands piped. Enter less than 15 commands.\n");
            continue;
        }
        if (num_commands <= 1 && strncmp(command_strings[0],"cd", 2) == 0) {
            call_command_string(command_strings[0]);
        }
        else {
            int pid = fork();
            if (pid == 0) pipe_commands(command_strings, num_commands - 1, STDIN_FILENO);
        }
        wait(status);
    } while(cont);
    printf("\n");
    return 0;
}
