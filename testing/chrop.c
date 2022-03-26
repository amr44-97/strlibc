#include <stdio.h>
#include "../libstr.h"
#include "../file_handle.h"


static int chrpos(char *s, int c) {
  char *p;

  p = strchr(s, c);
  return (p ? p - s : -1);
}


int main(){

    string fp = read_file_to_string("./tmp.txt");

    long int val =0,k;
    for(long int i =0 ; i < fp.length ; i++){
        if ((k =  chrpos("0123456789", fp.str[i])) >= 0 ){
            

            val  = val * 10 + k;
            printf("k = %lu\nval = %lu\n",k,val);

        }
               }
printf("-------------------------------------------------\n");
printf("val = %lu",val);
}
