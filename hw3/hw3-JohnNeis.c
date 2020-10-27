/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 3

    Compiled using: gcc -o hw3 -pthread hw3-JohnNeis.c
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

struct thread_args
{
    int id;
    char* infile;
    const char* search_arg;
};

void *find_string(void *arg)
{
    int exitCode = 0;
    struct thread_args *args;
    args = ((struct thread_args*)arg);

    int num_found = 0;
    char *token = strtok(args->infile, " ");
    while(token != NULL)
    {
        if(!strcmp(token, args->search_arg))
            num_found++;

        token = strtok(NULL, " ");
    }

    printf("Thread: %d\n\tFound %d %s\n", args->id, num_found, args->search_arg);

    pthread_exit(&exitCode);
}

int main(void)
{
    system("wget -q http://undcemcs01.und.edu/~ronald.marsh/CLASS/CS451/hw3-data.txt");
    
    FILE *fptr = fopen("hw3-data.txt", "r");
    if(!fptr)
    {
        printf("Bad file. Terminating.\n");
        return 1;
    }

    // Get the number of chars in the file,
    // then rewind it to extract the characters themselves
    int num_char = 0;
    while(getc(fptr) != EOF)
    {
        num_char++;
    }
    rewind(fptr);

    char *file_string = (char*)calloc(sizeof(char), num_char + 1);

    char c;
    int i = 0;
    while((c = getc(fptr)) != EOF && i < num_char)
    {
        if(c >= 'A' && c <= 'Z')
            c += 32;
        
        if(c != '\n')
            file_string[i] = c;
        else
            file_string[i] = ' ';

        i++;
    }
    file_string[num_char] = '\0';

    // Begin processing file input with threads
    pthread_t thread_easy, thread_polar;
    struct thread_args easy_arg, polar_arg;

    easy_arg.infile = (char*)calloc(sizeof(char), num_char + 1);
    strcpy(easy_arg.infile, file_string);
    easy_arg.search_arg = "easy";
    easy_arg.id = 1;

    polar_arg.infile = (char*)calloc(sizeof(char), num_char + 1);
    strcpy(polar_arg.infile, file_string);
    polar_arg.search_arg = "polar";
    polar_arg.id = 2;

    pthread_create(&thread_easy, NULL, find_string, (void *)&easy_arg);
    pthread_create(&thread_polar, NULL, find_string, (void *)&polar_arg);

    pthread_join(thread_easy, NULL);
    pthread_join(thread_polar, NULL);
    // End thread processing

    free(file_string);
    free(easy_arg.infile);
    free(polar_arg.infile);

    fclose(fptr);
    
    system("unlink hw3-data.txt");
    return 0;
}