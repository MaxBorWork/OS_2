#include <iostream>
#include <chrono>
#include <thread>
#include <stdio.h>
#include <sys/time.h>
#include "philosopher.h"
#include "fork.h"

extern sem_t *log_sem;

Philosopher::Philosopher(int phil_num, std::string name, std::string leftFork_name,
        std::string rightFork_name) : leftFork(std::move(leftFork_name), name), rightFork(std::move(rightFork_name), name) {
    this->phil_num = phil_num;
    this->name = name;
}

Philosopher::~Philosopher() {
    sem_unlink(LOG_SEMAPHORE_NAME);
}

void Philosopher::eat() {

//    writeLog(name, name + " start eating\n");
    writeSingleLog(name + " start eating\n");

    std::this_thread::sleep_for(std::chrono::milliseconds(phil_num * 1000));

//    writeLog(name, name + " stop eating\n");
    writeSingleLog(name + " stop eating\n");
}

void Philosopher::think() {

//    writeLog(name, name + " start thinking\n");
    writeSingleLog(name + " start thinking\n");

    std::this_thread::sleep_for(std::chrono::milliseconds(phil_num * 1000));

//    writeLog(name, name + " stop thinking\n");
    writeSingleLog(name + " stop thinking\n");
}

void Philosopher::live() {

//    writeLog(name, name + " start live\n");
    writeSingleLog(name + " start live\n");
    for (int i = 0; i < 10; i++)
//while (true)
    {

        leftFork.take();
        int canTakeRight = rightFork.takeRight();
        if (canTakeRight == 1) {
            leftFork.put();
            std::this_thread::sleep_for(std::chrono::milliseconds(phil_num * 500));
            continue;
        }

        eat();

        rightFork.put();
        leftFork.put();

        think();

    }
//    writeLog(name, name + " end live\n");
    writeSingleLog(name + " end live\n");
}

