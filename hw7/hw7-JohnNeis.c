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

void *thread_func(void *arg)
{
    int exitCode = 0;
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
        sleep(1);
        char in[20];
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
                //printf("%s\n", in);
                if(feof(file))
                {
                    global_balance += global_temp;
                    printf("Account balance after %s is $%.2f\n", t_a->threadname, global_balance);
                    pthread_mutex_unlock(&m);
                    break;
                }
                if(in[0] == 'W')
                {
                    global_balance += global_temp;
                    printf("Account balance after %s is $%.2f\n", t_a->threadname, global_balance);
                    pthread_mutex_unlock(&m);
                    break;
                }
                //printf("Adding %.2f\n", strtof(in, NULL));
                global_temp += strtof(in, NULL);
                
            }
        }
    }

    pthread_exit(&exitCode);
}

int main(void)
{
    #ifdef TEST
    char* filenames[] = {
        "Vlad.in",
        "Frank.in",
        "Bigfoot.in",
        "Casper.in",
        "Gomez.in"
    };
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

    if(pthread_mutex_init(&m, NULL))
    {
        printf("Unable to initialize mutex. Terminating.\n");
        return 1;
    }
    pthread_t t[MONSTERS];
    struct thread_args arglist[MONSTERS];
    arglist[VLAD].filename = "Vlad.in"; arglist[VLAD].threadname = "Vlad";
    arglist[FRANK].filename = "Frank.in"; arglist[FRANK].threadname = "Frank";
    arglist[BIGFOOT].filename = "Bigfoot.in"; arglist[BIGFOOT].threadname = "Bigfoot";
    arglist[CASPER].filename = "Casper.in"; arglist[CASPER].threadname = "Casper";
    arglist[GOMEZ].filename = "Gomez.in"; arglist[GOMEZ].threadname = "Gomez";
    
    pthread_create(&t[VLAD], NULL, thread_func, (void *)&arglist[VLAD]);
    pthread_create(&t[FRANK], NULL, thread_func, (void *)&arglist[FRANK]);
    pthread_create(&t[BIGFOOT], NULL, thread_func, (void *)&arglist[BIGFOOT]);
    pthread_create(&t[CASPER], NULL, thread_func, (void *)&arglist[CASPER]);
    pthread_create(&t[GOMEZ], NULL, thread_func, (void *)&arglist[GOMEZ]);

    pthread_join(t[VLAD], NULL);
    pthread_join(t[FRANK], NULL);
    pthread_join(t[BIGFOOT], NULL);
    pthread_join(t[CASPER], NULL);
    pthread_join(t[GOMEZ], NULL);
}