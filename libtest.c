#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include "libstr.h"
#include "file_handle.h"


int main(int argc,char **argv){
    (void) argc;
    (void) argv;
  //  if(argc <2 ){
  //      fprintf(stderr, "no input ERROR\n");
  //      exit(-1);
  //  }
  
    
    string max = newstr("hello iam groot and i am an x86_64 assembler!!");
    string mas = newstr("i am the best assembler ever");
    char lsa[234] ;
    fgets(lsa,40, stdin);
    str_println(max);
    max = str_cat(max,lsa);

    str_println(max);
    str_println(mas);
    max = str_cat(max,mas.str);
    str_println(max);
    str_free_all();
}   


