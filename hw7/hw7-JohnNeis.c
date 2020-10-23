/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 7

    Compiled using: gcc -o hw7 hw7-JohnNeis.c -pthread
          or using: gcc -o hw7 -DTEST hw7-JohnNeis.c -pthread
*/

#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

#define VLAD 0
#define FRANK 1
#define BIGFOOT 2
#define CASPER 3
#define GOMEZ 4
#define MONSTERS 5

float global_balance = 0;
pthread_mutex_t m;

struct thread_args
{
    char *filename;
    char *threadname;
};

char* filenames[] = 
{
    "Vlad.in", 
    "Frank.in",
    "Bigfoot.in",
    "Casper.in",
    "Gomez.in",
    "Vlad",
    "Frank",
    "Bigfoot",
    "Casper",
    "Gomez"
};

void *thread_func(void *arg)
{
    int exitCode = 0;
    char in[255];

    struct thread_args *t_a = (struct thread_args *)arg;
    char *filename = t_a->filename;
    
    FILE *file = fopen(filename, "r");
    if(!file)
    {
        printf("Couldn't open %s. Terminating.\n", filename);
        exitCode = 1;
        pthread_exit(&exitCode);
    }

    while(1)
    {
        sleep(0.25);
        fscanf(file, "%s\n", in);
        if(feof(file))
        {
            break;
        }
        if(in[0] == 'R')
        {
            float global_temp = 0;
            while(pthread_mutex_trylock(&m));

            while(1)
            {
                fscanf(file, "%s\n", in);
                
                if(in[0] == 'W')
                {
                    global_balance += global_temp;
                    printf("Account balance after %s is $%.2f\n", t_a->threadname, global_balance);
                    pthread_mutex_unlock(&m);
                    break;
                }

                if(feof(file))
                {
                    global_balance += global_temp;
                    printf("Account balance after %s is $%.2f\n", t_a->threadname, global_balance);
                    pthread_mutex_unlock(&m);
                    break;
                }
                
                global_temp += strtof(in, NULL);
                
            }
        }
    }

    pthread_exit(&exitCode);
}

int main(void)
{

    #ifdef TEST
    int i;

    for(i = 0; i < MONSTERS; i++)
    {
        FILE *file = fopen(filenames[i], "r");
        while(1)
        {
            char in[20];
            fscanf(file, "%s\n", in);
            if(feof(file)) 
            {
                break;
            }
            if(in[0] == '+' || in[0] == '-')
            {
                global_balance += strtof(in, NULL);
            }
        }
        fclose(file);
        file = NULL;
    }
    printf("%.2f ending balance\n", global_balance);

    return 0;
    #endif

    pthread_detach(pthread_self());

    if(pthread_mutex_init(&m, NULL))
    {
        printf("Unable to initialize mutex. Terminating.\n");
        return 1;
    }
    pthread_t t[MONSTERS];
    struct thread_args arglist[MONSTERS];
    int i;

    for(i = 0; i < MONSTERS; i++)
    {
        arglist[i].filename = filenames[i];
        arglist[i].threadname = filenames[MONSTERS + i];
        pthread_create(&t[i], NULL, thread_func, (void *)&arglist[i]);
        pthread_detach(t[i]);
    }

    pthread_exit(NULL);
}