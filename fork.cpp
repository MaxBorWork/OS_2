#include <utility>
#include <iostream>
#include <stdio.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <semaphore.h>
#include <sys/time.h>
#include <chrono>
#include "fork.h"

extern sem_t *log_sem;

#define SEMAPHORE_NAME ("/")

Fork::Fork( std::string fork_name,  std::string owner_name)
{
    this->name = std::move(fork_name);
    this->owner = std::move(owner_name);

    if ( (sem = sem_open((SEMAPHORE_NAME + name).c_str(), O_CREAT, 0777, 1)) == SEM_FAILED ) {
//        writeLog(owner_name, "sem " + name + " opened");
        writeSingleLog("sem " + name + " opened");
        perror("sem_open");
    }
}

Fork::~Fork()
{
    sem_unlink((SEMAPHORE_NAME + name).c_str());
}

void Fork::take()
{

    if (sem_trywait(sem) == 0) {
//        writeLog(owner, "semaphore " + SEMAPHORE_NAME(name) + " acquired" + "\n");
        writeSingleLog( "semaphore " + name + " acquired\n");
    } else {
//        writeLog(owner, "need to wait for semaphore " + name + "\n");
        writeSingleLog( "need to wait for semaphore " + name + "\n");
        sem_wait(sem);
    }

//    writeLog(owner, owner + " take fork " + name + "\n");
    writeSingleLog(owner + " take fork " + name + "\n");
}

int Fork::takeRight()
{

    if (sem_trywait(sem) == 0) {
//        writeLog(owner, "semaphore " + SEMAPHORE_NAME(name) + " acquired" + "\n");
        writeSingleLog( "semaphore " + name + " acquired\n");
    } else {
//        writeLog(owner, "need to wait for semaphore " + name + "\n");
        writeSingleLog( "need to wait for semaphore " + name + "\n");
//        sem_wait(sem);
        return 1;
    }
    //sem_wait(sem);

//    writeLog(owner, owner + " take fork " + name + "\n");
    writeSingleLog(owner + " take fork " + name + "\n");
    return 0;
}

void Fork::put()
{
//    writeLog(owner, owner + " put fork " + name + "\n");

    writeSingleLog(owner + " put fork " + name + "\n");


    sem_post(sem);
}

void writeLog(std::string filename, std::string message) {
    std::ofstream mylogStream;
    mylogStream.open(filename.c_str(), std::ios::app);
    std::chrono::system_clock::time_point time = std::chrono::system_clock::now();
    time_t t = std::chrono::system_clock::to_time_t(time);
//    std::string str = std::string(std::ctime(&t));
//    str = str.substr(0, str.length() - 1);

    std::tm * ptm = std::localtime(&t);
    char buffer[32];
    std::strftime(buffer, 32, "%a, %d.%m.%Y %H:%M:%S", ptm);

    timespec ts{};
    clock_gettime(CLOCK_REALTIME, &ts);

    mylogStream << buffer << ":" << std::to_string(ts.tv_nsec) + "   " + message;
    mylogStream.close();
}

void writeSingleLog(const std::string &message) {
    sem_wait(log_sem);
    std::ofstream mylogStream;
    mylogStream.open("mylog.txt", std::ios::app);
    std::chrono::system_clock::time_point time = std::chrono::system_clock::now();
    time_t t = std::chrono::system_clock::to_time_t(time);

    std::tm * ptm = std::localtime(&t);
    char buffer[32];
    std::strftime(buffer, 32, "%a, %d.%m.%Y %H:%M:%S", ptm);

    timespec ts{};
    clock_gettime(CLOCK_REALTIME, &ts);

    mylogStream << buffer << ":" << std::to_string(ts.tv_nsec) + "   " + message;
    mylogStream.close();
    sem_post(log_sem);
}