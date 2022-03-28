#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include "libstr.h"
#include "file_handle.h"


int main(){


    string max = newstr("hello iam groot and i am an x86_64 assembler!!");
    string mas = newstr("i am the best assembler ever");
    char *lsa = " heloooaooooaoadadamdsak!!";
    
    __str_println(max);
    max = __str_cat(max,lsa);

    __str_println(max);
    __str_println(mas);
    max = __str_cat(max,mas.str);
    __str_println(max);
    __str_free_all();
}   


