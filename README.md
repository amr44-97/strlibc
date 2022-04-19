# strlibc
## string and file handling library 

made this library to make it easier for me to deal with strings 
may be not effecient but it is working



functions 
```
String StringBuild(char *__str); 

String StringBuild_s(char *__str, size_t size);

char* Str_reverse(char *__String);  

int Str_find_char(String __str, char element);

list Str_split(String strc);

list Str_split_delim(char *strc,const char delimeter[]); // takes multible delimeters

String Str_substr(String s, size_t st_pos, size_t n);

String Str_cat(String __str,char * __char); // doesn't change the original string 

void Str_cat_m(String* __str ,char * __char); // deal with the string as mutable

void Str_input(String* buf); // growing string

void  Str_free_all(); // frees all currently allocated  strings at once.

void free_str(String __str);

void print_alloc_info();

Println(X); // generic print fucntion

```


