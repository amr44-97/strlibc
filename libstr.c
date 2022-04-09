#include "libstr.h"
#include "error_out.h"
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/cdefs.h>
#include <unistd.h>
#include <stdbool.h>
#include <ctype.h>

#define __STRING_STACK_SIZE 20000
#define __MIN_LIST__STR_ 500

/*
 * TODO
 * 1- add input strings [X]
 * 2- add empty strings
 * 3- add newstr with defined size [X]
 *
 *
*/

// a container to all the allocatoins 

static void* __STRING_STACK[__STRING_STACK_SIZE] = {NULL};
static void* __MARKED_FREE[__STRING_STACK_SIZE] = {NULL};
//static void* __STRING_REALLOC[__STRING_STACK_SIZE] = {NULL};

__attribute__((always_inline)) static inline void add_strptr_stack(void *__str);
__attribute__((always_inline)) static inline void update_ptr_pointer(void *old_ptr, void * new_ptr);

__attribute__((always_inline)) static inline int check_marked_free(string __str);
__attribute__((always_inline)) static inline int check_marked_free_ptr(char* __str);

// counter to the allocations
static unsigned int __stack_pos = 0;
// counter to freed memory
static unsigned int __Marked_Free_POS = 0;

__attribute__((always_inline)) static inline void add_strptr_stack(void *__str){
        __STRING_STACK[__stack_pos] = __str;
        __stack_pos++;
}
__attribute__((always_inline)) static inline void update_ptr_pointer(void *old_ptr, void * new_ptr){
    for(int i = 0 ; i < (int) __stack_pos; i++){
        if(__STRING_STACK[i] == old_ptr){
           __STRING_STACK[i] = new_ptr;
        }
    }
}

void print_alloc_info(){
    printf("__stack_pos = %u\n",__stack_pos);
    printf("__Marked_Free_POS = %u\n",__Marked_Free_POS);
}


void str_free_all(){
    int tmp  = (int) __stack_pos;
    for(int i = 0 ; i <  tmp ;i++){
      //  while( __STRING_STACK[i] != NULL){
            if(__STRING_STACK[i] == NULL){continue;}  
            if(check_marked_free_ptr(__STRING_STACK[i])){  continue;} // prevent double free errors
                      
                      __MARKED_FREE[__Marked_Free_POS] = __STRING_STACK[i];
                       free(__STRING_STACK[i]);
                      __STRING_STACK[i] = NULL;
                      __Marked_Free_POS++;
                      __stack_pos--;
      //  }
    }
    //__stack_pos = 0;
}

void free_str(string __str){
    if(check_marked_free(__str)){ // prevent double free errors
        return;       
    }
    if(__stack_pos > 0 ){ // check for elements before going on
        for(int i = 0 ; i < (int) __stack_pos;i++){
            if(__STRING_STACK[i] == __str.str){
                if(check_marked_free_ptr(__str.str)){continue;}
                    __MARKED_FREE[__Marked_Free_POS] = __STRING_STACK[i];
                    free(__STRING_STACK[i]);
                    __STRING_STACK[i] = NULL;
                    __Marked_Free_POS++;
                    __stack_pos--;
                    break;
            }
        }
    }
}



string newstr(char *__str){
    const unsigned int len = strlen(__str);
//[NOTE]  undefined behavior with non-null terminated strings
//[NOTE]    // TODO fix undefined behavior
    string __local ;
    __local.str = (char*) calloc(len+1,sizeof(char));
                     __local.length = len;
    
//[NOTE]   // Valgrind gives error when copying to not enough space
        memccpy(__local.str, __str,'\0', len+1);
        add_strptr_stack(__local.str);
        return __local;
}

string newstr_s(char *__str, size_t size){
    const unsigned int len = size;
//[NOTE]  undefined behavior with non-null terminated strings
//[NOTE]    // TODO fix undefined behavior
    string __local ;
    __local.str = (char*) calloc(len+1,sizeof(char));
                     __local.length = len;
    
//[NOTE]   // Valgrind gives error when copying to not enough space
        memccpy(__local.str, __str,'\0', len+1);
        add_strptr_stack(__local.str);
        return __local;
}



__attribute__((always_inline)) static inline int check_marked_free(string __str){
    int no_err = 0;
    if(__Marked_Free_POS > 0){ 
        for( int i =0; i <= (int)__Marked_Free_POS;i++)
          {
            if(__str.str == __MARKED_FREE[i]){
                 //fprintf(stderr, "[ERROR:] %s",__error_type);
                 no_err = 1;  
            }
        }
    }
    return no_err;
}

__attribute__((always_inline)) static inline int  check_marked_free_ptr(char* __str){
    int no_err = 0;
    if(__Marked_Free_POS > 0){ 
        for( int i =0; i <= (int)__Marked_Free_POS;i++)
          {
            if(__str == __MARKED_FREE[i]){
                 //fprintf(stderr, "[ERROR:] %s",__error_type);
                 no_err = 1;  
            }
        }
    }
    return no_err;
}



string str_copy(string __str){
    
    if(__str.str == NULL) {
        fprintf(stderr,ANSI_COLOR_RED "[ERROR:] copying from empty [NULL] string\n" ANSI_COLOR_RESET);
        exit(-1);
    }
    if(check_marked_free(__str)){
       fprintf(stderr,ANSI_COLOR_RED "[ERROR:] copying from unaccessable string\n" ANSI_COLOR_RESET);
        exit(-1);
    }
    const unsigned int len= __str.length ;
    string __local = {.str = (char*) calloc(len+1,sizeof(char)),
                      .length = len} ;  
      
        memccpy(__local.str, __str.str,'\0', len);
        
        add_strptr_stack(__local.str);
        return __local;
}

// output functions 

void str_println(string __str){
  
if(check_marked_free_ptr(__str.str) || __str.str == NULL){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]:print error using a freed string at" ANSI_COLOR_MAGENTA " [ %s:%d , %s()]\n" ANSI_COLOR_RESET,__FILE__,__LINE__,__func__);
        exit(1);
    }

  write(1, __str.str, __str.length);
  write(1,"\n", 1);
}

void str_print(string __str){
if(check_marked_free_ptr(__str.str) || __str.str == NULL){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]:print error using a freed string at" ANSI_COLOR_MAGENTA " [ %s:%d , %s()]\n" ANSI_COLOR_RESET,__FILE__,__LINE__,__func__);
        exit(1);
    }
     write(1, __str.str, __str.length);
}


void list_print(list __lis){


printf("{");
  for (int i = 0; i < (int)__lis.length; ++i) {
    
    if (__lis.ptr[i] == NULL ) {
      break;
    }
    if (*__lis.ptr[i] == '\0') { // to ignore NULL as they also considerd tokens
      continue;
    }
    if(i <= (int) __lis.length-2){
    printf(" \"%s\",", __lis.ptr[i]);
    }
    if(i == (int) __lis.length-1){
    printf(" \"%s\"", __lis.ptr[i]);
    }
    
  }
  printf("}\n");

}



int str_find_char(string __str, char element){
    _pos __curr_pos = 0;
    for(int i =0 ; i< (int) __str.length;i++){
        if(__str.str[i] == element){__curr_pos = i;break;}
    }
    return (int)__curr_pos;
}



// TODO allow split to take array of delimeters
//static int ret_delim(char *__str,const char delim[]){
//    int ret =0 ;
//    for(int i = 0 ; i < sizeof(*delim);i++){
//       for(int x =0 ; x < sizeof(*__str);x++){
//           if (delim[i] == __str[x]){
//            ret =1;
//           }
//        
//        }
//    }
//    return ret;
//}


list str_split(char *strc) {

    if(check_marked_free_ptr(strc) || strc == NULL){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]: str_split error using a freed string at" ANSI_COLOR_MAGENTA " [ %s:%d , %s()]\n" ANSI_COLOR_RESET,__FILE__,__LINE__,__func__);
        exit(1);
    }

  list new_list = {.ptr = calloc(__MIN_LIST__STR_,sizeof(char*)), .length =0};
    
  add_strptr_stack(new_list.ptr);
  size_t __len = strlen(strc);

  char* old_list = calloc(__len+1, sizeof(char));
  memcpy(old_list, strc,__len+1);
  add_strptr_stack(old_list);
  char *ptr_listclone;
  ptr_listclone = &old_list[0];
  new_list.ptr[0] = ptr_listclone;
  int i = 0,x =0 ;
  
  while (old_list[i] != '\0') {
    if (old_list[i] == ' ' || old_list[i] == '\n' || old_list[i] == ',') {
      old_list[i] = '\0';
      ptr_listclone = &old_list[i + 1];
      new_list.ptr[x+1] = ptr_listclone;
      x++;
    }
    i++;
  }
     new_list.length = x+1;
    return new_list;
}



list str_split_new(char *strc) {

    if(check_marked_free_ptr(strc) || strc == NULL){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]: str_split error using a freed string at" ANSI_COLOR_MAGENTA " [ %s:%d , %s()]\n" ANSI_COLOR_RESET,__FILE__,__LINE__,__func__);
        exit(1);
    }

  list new_list = {.ptr = calloc(__MIN_LIST__STR_,sizeof(char*)), .length =0};
    
  add_strptr_stack(new_list.ptr);
  size_t __len = strlen(strc);

  char* old_list = calloc(__len+1, sizeof(char));
  memcpy(old_list, strc,__len+1);
  add_strptr_stack(old_list);
  char *ptr_listclone;
  ptr_listclone = &old_list[0];
  new_list.ptr[0] = ptr_listclone;
  int i = 0,x =0 ;
  
  while (old_list[i] != '\0') {
    if (old_list[i] == ' ' || old_list[i] == '\n' || old_list[i] == ',') {
      old_list[i] = '\0';
      ptr_listclone = &old_list[i + 1];
      new_list.ptr[x+1] = ptr_listclone;
      x++;
    }
    i++;
  }
     new_list.length = x+1;
    return new_list;
}




static  void __str_check_error(string __str){
    if(__str.str == NULL || __str.length == 0){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]: unaccessable OR empty string\n" ANSI_COLOR_RESET);
        exit(-1);
    }
}

static  void __char_check_error(char* __str){
    if(__str == NULL ){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]: unaccessable OR empty char ptr\n" ANSI_COLOR_RESET);
        exit(-1);
    }
}


string str_cat(string __str ,char * __char){
    __str_check_error(__str);
    __char_check_error(__char);

    if(check_marked_free(__str) || __str.str == NULL){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]:using a freed string at" ANSI_COLOR_MAGENTA " [ %s:%d , %s()]\n" ANSI_COLOR_RESET,__FILE__,__LINE__,__func__);
        exit(1);
    }
   // char *old_ptr = __str.str;
    size_t __len = strlen(__char);
    size_t oldlen = __str.length;
    
    size_t tot = __str.length + strlen(__char);
    
    string ret_str ={.str =(char *) malloc(sizeof(char)*(tot+1)) ,.length  = tot+1};
     memset(ret_str.str,0,tot+1);
    if(ret_str.str == NULL){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]: failed to reallocarray at [str_cat(),libstr.c:%d]\n" ANSI_COLOR_RESET,__LINE__);
            exit(1);
    }
    memcpy(ret_str.str,__str.str,__str.length);
    
    memccpy(&ret_str.str[__str.length-1],__char,'\0',__len+1);
    //update_ptr_pointer(old_ptr, ret_str.str);
    add_strptr_stack(ret_str.str);
    if(ret_str.length <= oldlen){
        fprintf(stderr,ANSI_COLOR_RED "[ERROR]: the lenght of the new string didn't change at [str_cat(),libstr.c:%d]\n" ANSI_COLOR_RESET ,__LINE__);
        printf("lenght= %lu\n",ret_str.length);
    }

    return ret_str;
}

void str_input(string* buf){
    buf->str = NULL;
    buf->length =0;
    int c = fgetc(stdin);
    buf->str = calloc(25, sizeof(char));
    char *old_ptr = buf->str;
    int i =0 ;
    int siz = 25;
    
    while (c != '\n' && i <  siz) {
        if(i == siz-1){
            buf->str = realloc(buf->str, (siz +20)*sizeof(char));
            memset(&buf->str[siz], 0, 20 * sizeof(char));           
            char *_new = buf->str;
            siz = siz + 20;
            update_ptr_pointer(old_ptr, _new);
        }
        buf->str[i] = c;
        c = fgetc(stdin);
        i++;
    }

  char *fin_ptr = buf->str;
  buf->length = siz;
  add_strptr_stack(fin_ptr);
}


