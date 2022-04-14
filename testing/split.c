#include "../libstr.h"
#include "../file_handle.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "../error_out.h"



int main(){
    

    FILE *fp = fopen("../libstr.c", "r+");
    fseek(fp, 0, SEEK_END);
    size_t len = ftell(fp);
    fseek(fp, 0, SEEK_SET);

    char * cont = malloc(sizeof(char)* len+1);
    memset(cont, 0, len+1);  
    fread(cont, 1, len+1,fp);
    cont[len] = '\0';
   list vec = str_split(cont);
   for(int i =0; i < vec.length;i++)
       printf("{ %s }\n",vec.ptr[i]);
}
