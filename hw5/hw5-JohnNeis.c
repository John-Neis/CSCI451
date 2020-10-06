/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 5

    Compiled using: gcc -o hw5 -pthread hw5-JohnNeis.c
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>

pthread_mutex_t lock;
char theChar_global = '\0';
char finished[] = {'\0', '\0', '\0'};

void *read_func1(void *arg)
{
    int exitCode = 0;
    FILE *fin = fopen("hw5-1.in", "r");
    if(!fin)
    {
        printf("Bad file. Terminating.\n");
        exitCode = 1;
        pthread_exit(&exitCode);
    }

    while(!feof(fin))
    {
        while(pthread_mutex_trylock(&lock)) {}

        if(theChar_global == '\n') fscanf(fin, "%c\n", &theChar_global);

        pthread_mutex_unlock(&lock);
    }

    while(pthread_mutex_trylock(&lock)) {}

    finished[0] = 8;

    pthread_mutex_unlock(&lock);

    fclose(fin);
    pthread_exit(&exitCode);
}

void *read_func2(void *arg)
{
    int exitCode = 0;
    FILE *fin = fopen("hw5-2.in", "r");
    if(!fin)
    {
        printf("Bad file. Terminating.\n");
        exitCode = 1;
        pthread_exit(&exitCode);
    }

    while(!feof(fin))
    {
        while(pthread_mutex_trylock(&lock)) {}

        if(theChar_global == '\n') fscanf(fin, "%c\n", &theChar_global);
        if(theChar_global == '&')
        {
            #ifdef CASE1
            pthread_exit(&exitCode);
            #endif
            #ifdef CASE2
            char kill_str[200];
            pthread_t tid = pthread_self();
            sprintf(kill_str, "kill -s 9 %lu", tid);
            //puts(kill_str);
            system(kill_str);
            //pthread_exit(&exitCode);
            #endif
        }

        pthread_mutex_unlock(&lock);
    }
    
    while(pthread_mutex_trylock(&lock)) {}

    finished[1] = 7;

    pthread_mutex_unlock(&lock);

    fclose(fin);
    pthread_exit(&exitCode);
}

void *read_func3(void *arg)
{
    int exitCode = 0;
    FILE *fin = fopen("hw5-3.in", "r");
    if(!fin)
    {
        printf("Bad file. Terminating.\n");
        exitCode = 1;
        pthread_exit(&exitCode);
    }

    while(!feof(fin))
    {
        while(pthread_mutex_trylock(&lock)) {}

        if(theChar_global == '\n') fscanf(fin, "%c\n", &theChar_global);

        pthread_mutex_unlock(&lock);
    }
    
    while(pthread_mutex_trylock(&lock)) {}

    finished[2] = 6;

    pthread_mutex_unlock(&lock);

    fclose(fin);
    pthread_exit(&exitCode);
}

int main()
{
    if(pthread_mutex_init(&lock, NULL))
    {
        printf("Unable to initialize mutex. Terminating.\n");
        return 1;
    }

    FILE *fout = fopen("hw5.out", "w");
    if(!fout)
    {
        printf("Unable to write to file. Terminating.\n");
        return 1;
    }

    pthread_t t_1, t_2, t_3;
    pthread_create(&t_1, NULL, read_func1, NULL);
    pthread_create(&t_2, NULL, read_func2, NULL);
    pthread_create(&t_3, NULL, read_func3, NULL);

    while(1)
    {
        while(pthread_mutex_trylock(&lock)) {}

        if(theChar_global != '\n' && theChar_global != '\0') fprintf(fout, "%c\n", theChar_global);
        theChar_global = '\n';

        if(finished[0] == 8 && finished[1] == 7 && finished[2] == 6)
        {
            pthread_mutex_unlock(&lock);
            break;
        }
        pthread_mutex_unlock(&lock);
    }

    pthread_join(t_1, NULL);
    pthread_join(t_2, NULL);
    pthread_join(t_3, NULL);
    pthread_mutex_destroy(&lock);

    fclose(fout);
    return 0;
}