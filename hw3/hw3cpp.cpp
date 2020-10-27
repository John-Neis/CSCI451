#include <thread>
#include <iostream>
#include <sstream>

void find(char* src, char* arg)
{
    std::ostringstream oss;
    oss << src << " " << arg << std::endl;
    std::cout << oss.str();
}

int main()
{
    char src[] = "source";
    char arg[] = "argument";

    std::thread t1(find, src, arg);
    std::thread t2(find, src, arg);
    t1.join();
    t2.join();
    return 0;
}