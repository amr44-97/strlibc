#ifndef F_HANDLER
#define F_HANDLER 
#include<stdio.h>
#include<stdlib.h>
#include<assert.h>
#include "libstr.h"
typedef struct file{
    const char *name;
    size_t size;
    FILE *ptr;
   // char *buf; // replaced with string from  libstr.h
}file;

file open_file(const char *file_name,const char *flag);
string read_file_to_string(const char *file_name);
//void close_file(file f);

#endif

