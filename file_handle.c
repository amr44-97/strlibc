#include "file_handle.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/cdefs.h>
//#include "libstr.h"

// return a file description
file open_file(const char *file_name,const char *flag)
{
    file sr = {NULL};
    FILE *file_ = fopen(file_name,flag);
    assert(file_ != NULL);   
    fseek(file_,0,SEEK_END);
    size_t file_size = ftell(file_);
    assert(file_size > 0);
    sr.size = file_size;
    fseek(file_,0,SEEK_SET);
    sr.ptr = file_;
    sr.name = file_name;
    return sr;
}

void close_file(file fl){
    fclose(fl.ptr);
}

string read_file_to_string(const char *file_name){
    char *__dest = NULL;
    string __local ={NULL};
    FILE *file_ = fopen(file_name,"r+");
   // assert(file_ != NULL);   
    fseek(file_,0,SEEK_END);
    size_t file_size = ftell(file_);
    assert(file_size > 0);
    fseek(file_,0,SEEK_SET);
    __dest = (char *) malloc((file_size+1) *sizeof(char));
    memset(__dest,0,file_size+1);
    (void) fread(__dest,1,file_size+1,file_);
    __local = newstr(__dest);
    free(__dest);
    fclose(file_);
    return __local;
}

//void close_file(file f){
//    free(f.buf);
//    f.buf = NULL;
//}
