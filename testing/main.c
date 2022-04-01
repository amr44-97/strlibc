#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "../file_handle.h"
#include "../libstr.h"


void str_input(string *buf){


}

int main(){
    int siz = 25;
    int c = fgetc(stdin);
    char *buf = calloc(siz, sizeof(char));
    int i =0 ;
    
    while (c != '\n' && i <  siz) {
        
        if(i == siz-1){
            buf = realloc(buf, siz +25);
            siz = siz + 25;
        }
        buf[i] = c;
        c = fgetc(stdin);
        i++;
    
    }


    printf("buf  =%s\n",buf);
}
