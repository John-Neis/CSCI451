/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 9

    Analysis: This assumed that there was only a single file stream that each thread pulled from;
    that is to say, that there were not 10 copies of the stream, but a single stream. 
    
    Under this condition, the nomutex file contained the words of the .data file in random order,
    and it was not guaranteed that any one thread would ever actually output to the file. In 5
    consecutive executions of the program, only two executions utilized all 10 threads. One 
    execution even utilized only 2 threads. It would not surprise me if there were a chance for
    an execution to only use a single thread. The order of the words was confirmed to be different
    every time the program ran, and the threads that ended up writing to the file changed as well.
    Each time the program ran, all of the words ended up being written as well. There was no loss
    of data.

    Under this condition, the mutex file contained all of the words from the .data file, and the
    order of the words was unchanged as it appeared in the .data file. The same phenomenon was 
    observed, that some threads were not guaranteed to run. In 5 consecutive runs, it was never
    the case that all 10 threads ran. In fact, it was more likely that fewer threads were allowed
    to execute. This makes more sense in this case, is it is possible that some threads would
    perpetually wait to get the mutex lock before proceeding.

    Compiled using: gcc -o hw9 hw9-JohnNeis.c -pthread
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>

#define THREADS 10

pthread_mutex_t m;

struct thread_args
{
    int thread_id;
    int flag;
    FILE *in_stream;
    FILE *out_stream;
};

void * thread_func(void *args)
{
    sleep(1);
    int exitCode = 0;
    char in[255];
    //size_t n = 255;
    struct thread_args *t_a = (struct thread_args *)args;

    FILE *in_fptr = t_a->in_stream;
    FILE *out_fptr = t_a->out_stream;

    if(t_a->flag == -1) // No mutex
    {
        //printf("In no mutex block Thread: %d\n", t_a->thread_id);
        while(fscanf(in_fptr, "%s\n", in) != -1)
        {
            sleep(0.25);

            fprintf(out_fptr, "%s\tThread: %d\n", in, t_a->thread_id);
        }
    }
    else // Mutex
    {
        while(1)
        {
            while(pthread_mutex_trylock(&m))
            {
                if(feof(in_fptr)) pthread_exit(&exitCode);
            }

            if(fscanf(in_fptr, "%s\n", in) == -1) break;
            
            fprintf(out_fptr, "%s\tThread: %d\n", in, t_a->thread_id);
            
            pthread_mutex_unlock(&m);
        }
    }
    
    pthread_exit(&exitCode);
}

int main(int argc, char **argv)
{
    if(argc != 2)
    {
        printf("Usage: ./hw9 <mutex | nomutex>\n");
        return 1;
    }

    struct thread_args t_a[THREADS];
    FILE *out_fptr, *in_fptr;
    int nm_flag;

    if(!strcmp(*(argv + 1), "mutex")) 
    {
        pthread_mutex_init(&m, NULL);
        nm_flag = 1;
        out_fptr = fopen("hw9.mutex", "w");
    }
    else if(!strcmp(*(argv + 1), "nomutex"))
    {
        nm_flag = -1;
        out_fptr = fopen("hw9.nomutex", "w");
    }
    else
    {
        printf("Usage: ./hw9 <mutex | nomutex>\n");
        return 1;
    }
    
    in_fptr = fopen("hw9.data", "r");
    pthread_t t[THREADS];
    int i;
    for(i = 0; i < THREADS; i++)
    {
        t_a[i].thread_id = i;
        t_a[i].flag = nm_flag;
        t_a[i].out_stream = out_fptr;
        t_a[i].in_stream = in_fptr;
        pthread_create(&t[i], NULL, thread_func, (void *)&t_a[i]);
    }

    for(i = 0; i < THREADS; i++)
    {
        pthread_join(t[i], NULL);
    }

    fclose(out_fptr);
    fclose(in_fptr);

    pthread_mutex_destroy(&m);
    
    return 0;
}