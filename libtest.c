#include <stdio.h>
#include <stdlib.h>
#include <wchar.h>
#include "libstr.h"
#include "file_handle.h"




int main(int argc, char **argv){
    if(argc < 2 ){
        fprintf(stderr, "ERROR: NO enough argument\n");
        fprintf(stderr, "<usage>: %s filename\n",argv[0]);
        exit(-1);
    }

    string sl = newstr("hello i am groot ,i am an x86_64 assembler");
    __str_println(sl);

    string dl = newstr("hello i am 2 groot ,i am an x86_64 assembler");

    __str_println(sl);
    __str_println(dl);

    //file f;
    string fc;
    fc = read_file_to_string(argv[1]);
   // string fcont = newstr(f.buf);
    __str_println(fc);

    string al = newstr("hello i am after file groot ,i am an x86_64 assembler");
    __str_println(al);


    printf("END OF FIRST TEST!!!\n");

    __str_free_all();

    printf("-----------------------------------------------after all---------------\n");
    printf("-----------------------------------------------after all---------------\n");
    printf("-----------------------------------------------after all---------------\n\n\n");
   
    string stream = newstr("hello i am groot and iam an x86_64, arm assembler , How the fook are you!!");
    __str_println(stream);
   list _lis = stream.split(stream.str);
 
    printf("lis  = %s\n",_lis.ptr[0]);
    printf("lis  = %s\n",_lis.ptr[1]);
    for(int i = 0 ; i < (int) _lis.length;i++){
        printf(" \"%s\",",_lis.ptr[i]);
    }
    printf("\n");



__str_free_all();


}   


