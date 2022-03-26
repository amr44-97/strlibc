#include <stdio.h>
#include <stdlib.h>
#include <string.h>



#define MIN_LIST 400
typedef struct list list;
struct list{
    char** ptr;
    size_t length;
};

static list __str_split(char *old_list) {
  list new_list ={.ptr = calloc(MIN_LIST, sizeof(char*)) ,
                 .length = 0
  };

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



int main()
{
    
    char **lis = calloc(1023, sizeof(char*));


    free(lis);

}













