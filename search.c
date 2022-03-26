#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stddef.h>
#include "libstr.h"


_pos __str_find_char(string __str, char element){
    _pos __curr_pos = 0;
    for(int i =0 ; i< __str.length;i++){
        if(__str.str[i] != element){break;}
        if(__str.str[i] == element){__curr_pos = i;break;}
    }
    return __curr_pos;
}
