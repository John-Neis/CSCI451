/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 8

    Note: This doesn't work, and I accept that I'll be losing points on this one.
    I don't quite understand how the ESC-C algorithm is supposed to work. Does each
    thread keep ownership of a page, or does it give up ownership? Does each thread
    request a new page after each R/W section? If it does, how do we know whether
    or not we're allowed to take ownership of a page? If it doesn't, then what's the
    point of requesting a page in the first place?
    
    I really just don't understand how this is supposed to be implemented in this 
    context. Some feedback would be really helpful here.

    Compiled using: gcc -o hw8 hw8-JohnNeis.c -pthread
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

struct ESC_C
{
    int owned;
    int M;
    int R;
    int Tail;
    struct ESC_C *next;
};

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

int threads_complete[] = {0, 0, 0, 0, 0};

struct ESC_C *head;
float global_balance = 0;
pthread_mutex_t m;

void ESC_C_init(struct ESC_C **node)
{
    *node = malloc(sizeof(struct ESC_C));

    int i; struct ESC_C *current = *node;
    for(i = 0; i < 5; i++)
    {
        current->next = NULL;
        current->next = malloc(sizeof(struct ESC_C));
        current->next->M = 0; current->next->R = 0;
        current = current->next;
    }
    current->Tail = 1;
    current->next = *node;
    
    return;
}

void ESC_C_destroy(struct ESC_C *node)
{
    struct ESC_C *current = node;
    node = NULL;
    while(!current->Tail)
    {
        struct ESC_C *temp = current;
        current = current->next;
        free(temp);
        temp = NULL;
    }

    free(current);
    current = NULL;
    return;
}

void ESC_C_reset(struct ESC_C *node)
{
    struct ESC_C *current = node;
    while(!current->Tail)
    {
        current->R = 0;
        current = current->next;
    }

    current->R = 0;

    return;
}

void ESC_C_request(struct ESC_C **request)
{
    int search_mode = 0;
    struct ESC_C *current = head;
    while(1)
    {
        if(search_mode == 0)
        {
            if(!current->owned && current->R == 0 && current->M == 0)
            {
                current->owned = 1;
                *request = current;
                break;
            }
        }
        else if(search_mode == 1)
        {
            if(!current->owned && current->R == 0 && current->M == 1)
            {
                current->owned = 1;
                *request = current;
                break;
            }
        }
        else if(search_mode == 2)
        {
            if(!current->owned && current->R == 1 && current->M == 0)
            {
                current->owned = 1;
                current->R = 0;
                *request = current;
                break;
            }
        }
        else if(search_mode == 3)
        {
            if(!current->owned && current->R == 1 && current->M == 1)
            {
                current->owned = 1;
                current->R = 0;
                *request = current;
                break;
            }
        }

        if(current->Tail && search_mode < 3) search_mode++;
        else search_mode = 0;

        current = current->next;
    }

    return;
}

void *thread_func(void *arg)
{
    int exitCode = 0;
    char in[255];

    struct thread_args *t_a = (struct thread_args *)arg;
    char *filename = t_a->filename;
    
    FILE *file = fopen(filename, "r");
    if(!file)
    {
        while(pthread_mutex_trylock(&m));

        if(!strcmp("Vlad", t_a->threadname)) threads_complete[VLAD] = 1;
        else if(!strcmp("Frank", t_a->threadname)) threads_complete[FRANK] = 1;
        else if(!strcmp("Bigfoot", t_a->threadname)) threads_complete[BIGFOOT] = 1;
        else if(!strcmp("Casper", t_a->threadname)) threads_complete[CASPER] = 1;
        else if(!strcmp("Gomez", t_a->threadname)) threads_complete[GOMEZ] = 1;

        pthread_mutex_unlock(&m);

        printf("Couldn't open %s. Terminating.\n", filename);
        exitCode = 1;
        pthread_exit(&exitCode);
    }

    struct ESC_C *page;
    ESC_C_request(&page);

    printf("%s has a page: %d\n", t_a->threadname, page->owned);

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

                if(feof(file))
                {
                    global_balance += global_temp;
                    
                    if(global_balance < 0)
                    {
                        page->M = 1; page->R = 1;
                    }
                    if(global_balance > 0)
                    {
                        page->R = 1;
                    }

                    printf("Account balance after %s is $%.2f\n", t_a->threadname, global_balance);
                    pthread_mutex_unlock(&m);
                    break;
                }

                if(in[0] == 'W')
                {
                    global_balance += global_temp;

                    if(global_balance < 0)
                    {
                        page->M = 1; page->R = 1;
                    }
                    if(global_balance > 0)
                    {
                        page->R = 1;
                    }

                    printf("Account balance after %s is $%.2f\n", t_a->threadname, global_balance);
                    pthread_mutex_unlock(&m);
                    break;
                }
                
                global_temp += strtof(in, NULL);
                
            }

            page->owned = 0;
            //page = NULL;

            //while(pthread_mutex_trylock(&m));
            //ESC_C_request(&page);
            //pthread_mutex_unlock(&m);
        }
    }

    while(pthread_mutex_trylock(&m));

    if(!strcmp("Vlad", t_a->threadname)) threads_complete[VLAD] = 1;
    else if(!strcmp("Frank", t_a->threadname)) threads_complete[FRANK] = 1;
    else if(!strcmp("Bigfoot", t_a->threadname)) threads_complete[BIGFOOT] = 1;
    else if(!strcmp("Casper", t_a->threadname)) threads_complete[CASPER] = 1;
    else if(!strcmp("Gomez", t_a->threadname)) threads_complete[GOMEZ] = 1;

    pthread_mutex_unlock(&m);

    pthread_exit(&exitCode);
}

int main()
{
    pthread_detach(pthread_self());

    if(pthread_mutex_init(&m, NULL))
    {
        printf("Unable to initialize mutex. Terminating.\n");
        return 1;
    }

    ESC_C_init(&head);

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

    int count = 0;
    while(1)
    {
        count++;
        if(count == 100)
        {
            //while(pthread_mutex_trylock(&m));
            ESC_C_reset(head);
            //pthread_mutex_unlock(&m);
        } 

        while(pthread_mutex_trylock(&m));
        int cond = threads_complete[0] && threads_complete[1] && threads_complete[2] && threads_complete[3] && threads_complete[4];
        pthread_mutex_unlock(&m);
        
        if(cond) break;
    }

    ESC_C_destroy(head);

    pthread_exit(NULL);
}