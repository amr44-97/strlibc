#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include "libstr.h"
#include "file_handle.h"
#include <ctype.h>

int main(int argc,char **argv){
    (void) argc;
//    (void) argv;
  
    if(argc <2 ){
        fprintf(stderr, "no input ERROR\n");
    //    exit(-1);
    }
  

  // string ppl = newstr("hello adas groot x86_64");
 string ppl = read_file_to_string(argv[1]);
 list mpv =  str_split(ppl.str,ppl.length);
    printlis(mpv);  
//   for(int i = 0; i < (int) mpv.length;i++){
//       printf("{%s}\n",mpv.ptr[i]);
//   }
   int x=0;
  for(int i = 0; i < (int) ppl.length;i++){
      if(ppl.str[i] == ' '){
          x++;
      } 
  }

   printf("token_num = %i\n",x);
   printf("strlen = %lu\n",ppl.length);
   print_alloc_info();
   str_free_all();
    print_alloc_info();


 // char str[80] = "This is - www.tutorialspoint.com - website";
 //  const char s[2] = " ";
 //  char *token;
 //  
 //  /* get the first token 
 //  token = strtok(ppl.str, s);
 //  
 //  /* walk through other tokens 
 //  while( token != NULL ) {
 //     printf( "{%s}\n", token );
 //   
 //     token = strtok(NULL, s);
 //  }


}


