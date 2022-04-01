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
};

struct list {
    char** ptr;
    size_t length;
};

// string function
string newstr(char *__str); 
char* reverse_str(char *__string);  
int str_find_char(string __str, char element);
list str_split(char *old_list);
//char* split(string *__str,const char __delim[]);
// static string copy(string __str); # defined static in the libstr.c
char* substr(char *__str);
string str_cat(string __str,char * __char);
string _to_str(char* __char);
void str_input(string* buf);

// memory functions 
// static void add_strptr_stack(string *__str);
void str_free_all();
//static inline void add_strptr_stack(char *__str);
//static inline int  check_marked_free(string __str);

//void __char_check_error(char* __str);
//void __str_check_error(string __str);

// operations 
void str_println(string __str);
void str_print(string __str);
int str_find_char(string __str, char element);


#endif
