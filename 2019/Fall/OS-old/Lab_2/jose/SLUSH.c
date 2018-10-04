#define FIRST -1
#define MIDDLE 1
#define LAST 0

//Lab 2 Details:
// Change current directory you're in. Provide pipelining support.
// | = Establishes a pipeline (Executes program A and dumps result in Program B without having to write to some file...)
//
// ls | prog_1 <keyword>
// Several pipelines can be implemented at the same time.
// Lab will require to execute from right to left
// We'll use a "[" instead of a | to descern pipes
// Objective: Build a shell that behaves exactly like the Linux sheel
// Programs are executed right to left (.c (cat (cat (cat (cat | ls)))))
// Create a kill switch,Ctrl-C to kill infinite loop programs
// Build keyword quit/exit that allows
// Build a ch dir using chdir when "cd" is inputted.




#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>


#define BUFFER_SIZE 256

int oldPipe = STDIN_FILENO;
void handle_exec( char* cmd, int status)
{
    //printf("STRTOK returned: '%s'\n", cmd );
    char* exec_cmd;
    char* my_argv[17];
    char* result = strtok(cmd," ");
    my_argv[0] = result;
    int i=1;
    while(result!=NULL)
    {
        result=strtok(NULL," ");
        my_argv[i]=result;
        i++;
    }
    my_argv[i]='\0';
    pid_t child;
//
//    for(int j=1;j<i;j++)
//    {
//        printf("%s",my_argv[j]);
//    }

    /*
     * Alright, so it's processing the arguments correctly. Bad file descriptor errror is a result of a PIPING (As Always).
     */
    int newPipe[2];
    if (status == FIRST || status == MIDDLE)
    {
       pipe(newPipe);
    }
    printf("Calling Fork\n");
    child = fork();
    if ((status == FIRST || status == MIDDLE) && child != LAST)
    {
       //close(newPipe[1]);
    }
    if (child == 0)
    {
        printf("Created child\n");
        if (status == FIRST) //-1 = First
        {
            //printf("First");
            close(newPipe[0]);
            dup2(newPipe[1], STDOUT_FILENO);
            execvp(my_argv[0], my_argv);
        }
        if (status == MIDDLE || status == LAST) // 1 = Middle
        {
            //printf("Middle %s \n",oldPipe);

            close(newPipe[0]);
            dup2(oldPipe, STDIN_FILENO);
            dup2(newPipe[1], STDOUT_FILENO);
            execvp(my_argv[0], my_argv);
        }
        // else if (status == LAST) // 0 = Last
        // {
        //     //printf("Last");
        //     dup2(oldPipe, STDIN_FILENO);
        //     execvp(my_argv[0], my_argv);
        // }
    }
    else {
        close(newPipe[1]);
        close(oldPipe);
        waitpid(child,NULL,0);
    }
    // if(status == MIDDLE || status == LAST)
    // {
    //     close(oldPipe);
    // }
    oldPipe=newPipe[0];
}

int parse_and_exec()
{
    char* token = strtok( NULL, "(" );
    if( token != NULL )
    {
        int status = parse_and_exec();
        handle_exec(token,status);
        return MIDDLE;
    }
    if(token==NULL)
    {
        return FIRST;
    }

};
int main()
{
    char buffer[BUFFER_SIZE];
    char* firstCmd;

    while(1)
    {

        printf("[SLUSH]$ ");  //capture fgets value
        if (fgets(buffer, BUFFER_SIZE, stdin) == 0)
        {
            perror("Could not get input");
            exit(-1);
        }
        int len = strlen(buffer);
        char* new_buff = strtok(buffer, "\n");
        //first call to strtok
        firstCmd = strtok(new_buff, "(");
        //Kick off recursion
        parse_and_exec();
        //Execute first token
        handle_exec(firstCmd,0);


    }
}
