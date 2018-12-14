#include <string>
#include <semaphore.h>
#include <fstream>

#ifndef OS_2_FORK_H
#define OS_2_FORK_H

#define LOG_SEMAPHORE_NAME "/my_named_semaphore"


class Fork
{
    std::string name;
    std::string owner;
    sem_t *sem;

public:
    Fork( std::string name, std::string owner_name);
    ~Fork();

    void take();
    int takeRight();
    void put();


private:

};

void writeLog(std::string, std::string);
void writeSingleLog(const std::string &message);

#endif
