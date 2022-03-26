#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int main(){

  const  char fs[] = "Hello i am groot i am an x86_64 assembler";
    int ss =0 ;
    const char *pl = fs;   
    printf("fs before = %s\n",fs);
    printf("address of fs = %p\n",fs); 
    int i = 0;
    while ( fs[i++] != '\0') {
                ss++;
        }

    printf("address of fs = %p\n",fs); 
    printf("fs after = %s\n",fs);
    const  char *fss = "Hello i am groot i am an x86_64 assembler";
        printf("len  = %i\n",ss);
        printf("strlen fs = %lu\n",strlen(fs));
        
printf("----------------------------------------eeeeeeeeeeeeeeeeeeeeeeeee\n\n");
    const char str[5] = {'A','B','D','E','L'};
    
    const char *ptr = &str[0];
    int len_str =0;
    while ( *(ptr++) != '\0') {
                len_str++;
        }




}
