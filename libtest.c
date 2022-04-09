#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include "libstr.h"
#include "file_handle.h"


int main(int argc,char **argv){
   // (void) argc;
  //  (void) argv;
  
    if(argc <2 ){
        fprintf(stderr, "no input ERROR\n");
    //    exit(-1);
    }
  
    string AS = newstr_s("hello",5);
    str_println(AS);
    string sd = newstr("hello people How are you iam groot ---- random stuff --asdad adadf sdoihy tgui hoj uya fdu kali dua ;a hoi ;fga");
    
    str_println(sd);
    printf("sd size = %lu\n",sd.length);
    
    string lsd = str_cat(sd,"--- another random shit alsoaz saadasdasd -- ;la,l,mad adadqneqopnpla; ;, ,xax5141231cnac adQSPAHCH BKBAKSDBAKBAKB");
    str_println(lsd);
    printf("lsd size = %lu\n",lsd.length);
    
    string sds = newstr("hello people How are you iam groot ---- random stuff --asdadadadfsdoihytguihojuyafdukalidua;ahoi;fga");

    str_println(sds);
    printf("sds size = %lu\n",sds.length);
printf("-----------------------------------------------------------------\n");
printf("-----------------------------------------------------------------\n");
printf("-----------------------------------------------------------------\n");

    list vec = str_split(sd.str);
    
    
    list_print(vec);


printf("-----------------------------------------------------------------\n");
printf("-----------------------------------------------------------------\n");
printf("-----------------------------------------------------------------\n");


    list vec2 = str_split(argv[1]);
    
    list_print(vec2);

    print_alloc_info();

    
    print_alloc_info();
}


