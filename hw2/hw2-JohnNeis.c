/*************************************/
/* John Neis ID: 8003486             */
/* Compiled with: gcc hw2-JohnNeis.c */
/* Executable: a.out                 */
/*************************************/

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    int pid = fork();
    if(pid == 0)
    {
        char* args[] = {"a.out", NULL};
        execv(args[0], args); // Child
    }
    else if(pid > 0)
    {
        system("xeyes"); // Parent
    }
    else
    {
        printf("Unable to fork\n");
    }
    
    return 0;
}