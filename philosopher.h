#include <string>
#include <fstream>
#include "fork.h"

#ifndef OS_2_PHILOSOPHER_H
#define OS_2_PHILOSOPHER_H

class Philosopher {
    int phil_num;
    std::string name;
    Fork leftFork;
    Fork rightFork;

public:
    Philosopher(int phil_num, std::string name, std::string leftFork_name, std::string rightFork_name);
    ~Philosopher();

    void live();

private:
    void eat();
    void think();
};

#endif
