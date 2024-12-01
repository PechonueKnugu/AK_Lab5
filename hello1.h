#ifndef HELLO1_H
#define HELLO1_H

struct hello_time {
    struct list_head list;
    ktime_t time;
};

void print_hello(void);

#endif 
