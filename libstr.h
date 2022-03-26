#ifndef __STR_A_LIB__
#define __STR_A_LIB__
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

typedef unsigned long int _pos;
typedef struct string string;
//typedef char** list;
typedef struct list list;


struct string {
    char *str;
    size_t length;
   _pos (*find)(string __str, char element);
    string (*copy)(string __str);
    list (*split)(char *__str);
    char* (*reverse_str)(char *__string);  
    char* (*substr)(char *str);
};

struct list {
    char** ptr;
    size_t length;
};

// string function
string newstr(char *__str); 
char* reverse_str(char *__string);  
_pos __str_find_char(string __str, char element);
char* split(string *__str,const char __delim[]);
//string copy(string __str);
char* substr(char *__str);

// memory functions 
// static void add_strptr_stack(string *__str);
void __str_free_all();
//static inline void add_strptr_stack(char *__str);
//static inline int  check_marked_free(string __str);


// operations 
void __str_println(string __str);
void __str_print(string __str);
_pos __str_find_char(string __str, char element);


#endif
