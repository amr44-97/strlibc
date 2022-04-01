#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "../file_handle.h"
#include "../libstr.h"

int main(){

    string cnt = {NULL};
    str_input(&cnt);

   printf("this is your content!!\n");
   // str_println(cnt);
   printf("length = %lu\n",cnt.length);
   write(1, cnt.str, cnt.length);
   // write(1,"\n", 1);
    str_free_all();
}








