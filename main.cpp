#include <iostream>
#include <stdio.h>
#include <fstream>
#include <semaphore.h>
#include <fcntl.h>
#include <sys/stat.h>
#include "philosopher.h"
#include "fork.h"

sem_t *log_sem;

int main(int argc, char *argv[])
{
    if (argc < 2) {
        return 1;
    }

    if ( (log_sem = sem_open(LOG_SEMAPHORE_NAME, O_CREAT, 0777, 1)) == SEM_FAILED ) {
        writeSingleLog("log sem opened");
        perror("sem_open");
    }

    int procIndex = std::stoi(argv[1]);
    std::string philName = "phil" + std::to_string(procIndex);
    std::string leftForkName, rightForkName;

    if (procIndex == 5) {
        leftForkName = "fork" + std::to_string(procIndex);
        rightForkName = "fork1";
    } else {
        leftForkName = "fork" + std::to_string(procIndex);
        rightForkName = "fork" + std::to_string(procIndex + 1);
    }

    Philosopher philosopher(procIndex, philName, leftForkName, rightForkName);
    philosopher.live();

    return 0;
}

