#ifndef __STR_A_LIB__
#define __STR_A_LIB__
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>


typedef unsigned long int _pos;
typedef struct string string;
//typedef char** list;
typedef struct list list;
typedef struct str_list str_list;


struct string {
    char *str;
    size_t length;
};

// length of list is the number of elements
struct list {
    char** ptr;
    size_t length;
};

struct str_list {
    string* ptr;
    size_t length;
};



// string function
string newstr(char *__str); 
string newstr_s(char *__str, size_t size);

char* reverse_str(char *__string);  
int str_find_char(string __str, char element);
list str_split(char *strc, size_t strc_len);
str_list str_split_new(char *strc, size_t tok_max);
//char* split(string *__str,const char __delim[]);
// static string copy(string __str); # defined static in the libstr.c
char* substr(char *__str);
string str_cat(string __str,char * __char);
string _to_str(char* __char);
void str_input(string* buf);


// memory functions 
void  str_free_all();
void free_str(string __str);
void print_alloc_info();
//static inline void add_strptr_stack(char *__str);
//static inline int  check_marked_free(string __str);

// libstr.c
// static inline void __char_check_error(char* __str);
// static inline void __str_check_error(string __str);

// operations 
void str_println(string __str);
void str_print(string __str);
void list_print(str_list __lis);
int str_find_char(string __str, char element);
void printlis(list __lis);

#endif
