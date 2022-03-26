#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "file_handle.h"
#include "libstr.h"

int main()
{
    char buf[3];
    buf[0] = 'A';
    buf[1] = 'M';
    buf[2] = 'R';
  const char str[3] = {'f', 'o', 'o'};
    printf("sizeof buf = %lu\n",sizeof(buf));
    printf("sizeof str = %lu\n",sizeof(str));
    
    string vul = newstr(buf);

    __str_println(vul);
}



