/*
    John Neis
    j.neis@und.edu
    ID: 8003486

    Homework 1

    Compiled using: g++ -o hw1 hw1-JohnNeis.cpp
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <stdlib.h>

int main(void)
{
    /****************************************/
    /*     Part 1: Run WGET                 */
    /****************************************/
    system("wget -q http://www.senate.gov/general/contact_information/senators_cfm.cfm");

    /****************************************/
    /*     Part 2: Parse/extract URLS       */
    /****************************************/

    std::ifstream web_file;
    web_file.open("senators_cfm.cfm");

    if(!web_file.is_open())
    {
        std::cout << "Unable to open the specified file. Terminating..." << std::endl;
        exit(EXIT_FAILURE);
    }

    std::vector<std::string> urls;
    std::string line, found_URL;
    std::size_t found_flag;
    bool should_add = true;
    while(getline(web_file, line))
    {
        found_flag = line.find("www."); // Not all of the URLs begin with http(s)://
        if(found_flag != std::string::npos)
        {
            /* It appears URLs mostly begin inside <a href></a> tags */
            while(line.at(found_flag) != '\"' && line.at(found_flag) != '>' && line.at(found_flag) != '=')
            {
                found_flag--;
            }
            found_flag++;

            /* Append chars to found_URL until we come to an invalid URL character */
            while(line.at(found_flag) != '\"' && line.at(found_flag) != '<')
            {
                found_URL += line.at(found_flag);
                found_flag++;
            }

            urls.push_back(found_URL);

            found_URL.clear();
        }
    }

    for(int i = 0; i < urls.size(); i++)
    {
        std::cout << urls[i] << std::endl;
    }
    std::cout << std::endl << "Found " << urls.size() << " URLs" << std::endl;

    web_file.close();
    /****************************************/
    /*     Part 3: Run UNLINK               */
    /****************************************/

    system("unlink senators_cfm.cfm");
    exit(EXIT_SUCCESS);
}