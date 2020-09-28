/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 4

    Compiled using: gcc -o hw4 -pthread hw4-JohnNeis.c
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

pthread_mutex_t lock;
pthread_cond_t condition;
int theNumber;
int notified = 0;

void *read_func(void *arg)
{
    int exitCode = 0;
    FILE *fin = fopen("hw4.in", "r");
    if(!fin)
    {
        printf("Bad file. Terminating.\n");
        exitCode = 1;
        pthread_exit(&exitCode);
    }

    while(!feof(fin))
    {
        pthread_mutex_lock(&lock);
        while(!notified)
        {
            pthread_cond_wait(&condition, &lock);
        }
        fscanf(fin, "%d\n", &theNumber);

        // Signal the print thread and unlock the mutex
        notified = 0;
        pthread_cond_signal(&condition);
        pthread_mutex_unlock(&lock);
    }
    
    pthread_mutex_lock(&lock);
    while(!notified)
    {
        pthread_cond_wait(&condition, &lock);
    }
    theNumber = -1;

    // Signal the print thread and unlock the mutex
    notified = 0;
    pthread_cond_signal(&condition);
    pthread_mutex_unlock(&lock);
    
    fclose(fin);
    pthread_exit(&exitCode);
}

void *print_func(void *arg)
{
    FILE *outfile = (FILE *)arg;
    int exitCode = 0;
    int printNumber = 0;
    while(printNumber != -1)
    {
        pthread_mutex_lock(&lock);
        while(notified)
        {
            pthread_cond_wait(&condition, &lock);
        }
        printNumber = theNumber;

        // Signal the read thread and unlock the mutex
        notified = 1;
        pthread_cond_signal(&condition);
        pthread_mutex_unlock(&lock);
        
        if(printNumber != 0 && printNumber != -1)
        {
            if(printNumber % 2 == 0)
            {
                fprintf(outfile, "%d\n%d\n", printNumber, printNumber);
            }
            else
            {
                fprintf(outfile, "%d\n", printNumber);
            }
        }
    }
    
    pthread_exit(&exitCode);
}

int main()
{
    theNumber = 0;

    if(pthread_mutex_init(&lock, NULL))
    {
        printf("Unable to initialize mutex. Terminating.\n");
        return 1;
    }

    if(pthread_cond_init(&condition, NULL))
    {
        printf("Unable to initialize condition. Terminating.\n");
        return 1;
    }

    FILE *fout = fopen("hw4.out", "w");
    if(!fout)
    {
        printf("Unable to write to file. Terminating.\n");
        return 1;
    }

    pthread_t t_read, t_print;
    pthread_create(&t_read, NULL, read_func, NULL);
    pthread_create(&t_print, NULL, print_func, (void *)fout);

    pthread_join(t_read, NULL);
    pthread_join(t_print, NULL);

    pthread_mutex_destroy(&lock);

    fclose(fout);
    return 0;
}