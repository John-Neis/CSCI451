#include <iostream>
#include <thread>
#include <mutex>
#include <fstream>
#include <sstream>
#include <unistd.h>

std::mutex lock;
char theChar_global = '\0';
bool finished[] = {false, false, false};

void threadfunc(std::string fname, int id)
{
    std::ifstream fin(fname);

    while(!fin.eof())
    {
        while(lock.try_lock() == false) {}

        char line[3];
        if(theChar_global == '\n') 
        {
            fin.getline(line, 3);

            theChar_global = line[0];
        }
        if(theChar_global == '&')
        {
            #ifdef CASE1
            return;
            #endif
            #ifdef CASE2
            std::ostringstream oss;
            std::thread::id me = std::this_thread::get_id();
            oss << "kill -s 9 " << me;
            std::string kill_str = oss.str();
            if(id == 1) std::cout << kill_str << std::endl;
            //return;
            if(id == 1) system(kill_str.c_str());
            #endif
        }

        lock.unlock();
    }

    while(lock.try_lock() == false) {}

    finished[id] = true;

    lock.unlock();

    fin.close();
}

int main(void)
{
    std::ofstream fout("hw5.out");
    std::thread t1(threadfunc, "hw5-1.in", 0), t2(threadfunc, "hw5-2.in", 1), t3(threadfunc, "hw5-3.in", 2);

    while(true)
    {
        while(lock.try_lock() == false) {}

        if(theChar_global != '\n' && (theChar_global >= 32 && theChar_global <= 126))
        {
            fout << theChar_global << '\n';
            theChar_global = '\n';
        }
        else if(theChar_global != '\n')
        {
            theChar_global = '\n';
        }

        if(finished[0] && finished[1] && finished[2]) break;
        lock.unlock();
    }

    t1.join(); t2.join(); t3.join();

    fout.close();
    return 0;
}
