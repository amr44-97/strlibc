#include "LibStr.h"
#include "file_handle.h"
#include <time.h>

int main(){
 
    clock_t start,end;
  
    start = clock();
	file ppl = read_file_to_string("./LibStr.c"); //newstr("hello adas groot x86_64");
	String pp = StringBuild("hello3 adas groot x86_64adsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasasamoiqw ");
    const char delim[]= {' ','\n',',','\0'};
    list mpv = Str_split(ppl.buf); //Str_split_delim(ppl.buf.str,delim);
    
    Println(mpv);
    end = clock();

    Println(Str_substr(pp,0,5));
    Println(pp);
    print_alloc_info();
    print_alloc_info();
    
   Str_free_all();
    close_file(ppl);

  printf("Time taken to print sum is %0.8lf seconds\n",
          (double)(end-start) / CLOCKS_PER_SEC);


}


