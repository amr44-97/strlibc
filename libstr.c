#include "libstr.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/cdefs.h>
#include <unistd.h>
#include <stdbool.h>
#include <ctype.h>

#define __STRING_STACK_SIZE 20000
#define MIN_LIST 500

/*
 * TODO
 * 1- add input strings
 *
 *
 *
 *
*/



// a container to all the allocatoins 

static void* __STRING_STACK[__STRING_STACK_SIZE] = {NULL};
static void* __MARKED_FREE[__STRING_STACK_SIZE] = {NULL};
//static void* __STRING_REALLOC[__STRING_STACK_SIZE] = {NULL};

static inline void add_strptr_stack(void *__str);
static inline void update_ptr_pointer(void *old_ptr, void * new_ptr);

static inline int  check_marked_free(string __str);




// counter to the allocations
unsigned int __stack_pos = 0;
// counter to freed memory
unsigned int __Marked_Free_POS = 0;

static inline void add_strptr_stack(void *__str){
        __STRING_STACK[__stack_pos] = __str;
        __stack_pos++;
}
static inline void update_ptr_pointer(void *old_ptr, void * new_ptr){
    for(int i = 0 ; i < (int) __stack_pos; i++){
        if(__STRING_STACK[i] == old_ptr){
           __STRING_STACK[i] = new_ptr;
        }
    }
}


void str_free_all(){
    for(int i =0 ; i <=  (int)__stack_pos;i++){
        __MARKED_FREE[__Marked_Free_POS] = __STRING_STACK[i];
        free(__STRING_STACK[i]);
        __STRING_STACK[i] = NULL;
        __Marked_Free_POS++;
    }
    __stack_pos = 0;
}

string newstr(char *__str){
    const unsigned int len = strlen(__str);
//[NOTE]  undefined behavior with non-null terminated strings
//[NOTE]    // TODO fix undefined behavior
    string __local = {.str = (char*) calloc(len+1,sizeof(char)),
                      .length = len,
    } ;
//[NOTE]   // Valgrind gives error when copying to not enough space
        memccpy(__local.str, __str,'\0', len);
        add_strptr_stack(__local.str);
        return __local;
}

static inline int  check_marked_free(string __str){
    int no_err = 0;
    if(__Marked_Free_POS > 0){ 
        for( int i =0; i < (int)__Marked_Free_POS;i++)
          {
            if(__str.str == __MARKED_FREE[i]){
                 //fprintf(stderr, "[ERROR:] %s",__error_type);
                 no_err = 1;  
            }
        }
    }
    return no_err;
}


string str_copy(string __str){
    
    if(__str.str == NULL) {
        fprintf(stderr,"[ERROR:] copying from empty [NULL] string\n");
        exit(-1);
    }
    if(check_marked_free(__str)){
       fprintf(stderr, "[ERROR:] copying from unaccessable string\n");
        exit(-1);
    }
    const unsigned int len= __str.length ;
    string __local = {.str = (char*) calloc(len+1,sizeof(char)),
                      .length = len} ;  
      
        memccpy(__local.str, __str.str,'\0', len);
        
        add_strptr_stack(__local.str);
        return __local;
}


void str_println(string __str){
 __attribute_maybe_unused__ int s= write(1, __str.str, __str.length);
__attribute_maybe_unused__ int sa= write(1,"\n", 1);
}

void str_print(string __str){
 __attribute_maybe_unused__ int s= write(1, __str.str, __str.length);
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


list str_split(char *old_list) {
  list new_list ={.ptr = calloc(MIN_LIST, sizeof(char*)) ,
                 .length = 0
  };

  add_strptr_stack(new_list.ptr);
  //char **new_list = calloc(MIN_LIST, sizeof(char*))  ;
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

static inline void __str_check_error(string __str){
    if(__str.str == NULL || __str.length == 0){
        fprintf(stderr,"[ERROR]: unaccessable OR empty string\n");
        exit(-1);
    }
}

static inline void __char_check_error(char* __str){
    if(__str == NULL ){
        fprintf(stderr,"[ERROR]: unaccessable OR empty char ptr\n");
        exit(-1);
    }
}


string str_cat(string __str ,char * __char){
    __str_check_error(__str);
    __char_check_error(__char);
    char *old_ptr = __str.str;
   // size_t __len = strlen(__char);
    size_t tot = __str.length + strlen(__char);
    __str.str = realloc(__str.str, tot * sizeof(char));
    char *ppt = &__str.str[__str.length];
    memcpy(ppt, __char, strlen(__char));
    char* new_ptr = __str.str; 
    update_ptr_pointer(old_ptr, new_ptr);
    __str.length = tot; // [ERROR:]
    return __str;
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

   // unsigned long int __lens=0;
   // for(int i =0 ; i < siz; i++){
   //     if(!((isalpha(buf->str[i])) && isspace(buf->str[i]))){
   //         __lens = i;
   //         break;
   //     }
   // }
  char *fin_ptr = buf->str;
  buf->length = siz;
  add_strptr_stack(fin_ptr);
}


