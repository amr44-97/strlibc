#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include "libstr.h"
#include "file_handle.h"
#include <ctype.h>
#include <time.h>

int main(){
 
    clock_t start,end;
  
    start = clock();
 string ppl = read_file_to_string("libstr.c"); //newstr("hello adas groot x86_64");
 string pp = newstr("hello adas groot x86_64adsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasasamoiqw ");
  
    list mpv = str_split(ppl.str,ppl.length);
     //  printf("%s\n",ls.ptr[1]); 
    Println(mpv);

    Println(pp);
    str_free_all();

  print_alloc_info();
  str_free_all();
  print_alloc_info();

  end = clock();

  printf("Time taken to print sum is %0.8lf seconds\n",
          (double)(end-start) / CLOCKS_PER_SEC);


}


