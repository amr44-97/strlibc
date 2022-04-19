CC = gcc

CFLAGS = -Wall -Wextra -pedantic -g  -O2 -std=gnu11
BINS = libtest_asm libtest  test libstr.so file_handle.so

all: $(BINS)

LibStr.o: LibStr.c  LibStr.h 
	${CC} ${CFLAGS} -c LibStr.c 

libstr.so: LibStr.c  LibStr.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ LibStr.c  -lc


file_handle.o: file_handle.c file_handle.h 
	${CC} ${CFLAGS} -c file_handle.c

file_handle.so: file_handle.c file_handle.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ file_handle.c -lc

libtest: libtest.c file_handle.o LibStr.o 
	$(CC) $(CFLAGS) -o $@ $^

test: ./vlunerabilities/test.c file_handle.o LibStr.o 
	$(CC) $(CFLAGS) -o $@ $^
	mv $@ ./vlunerabilities/
	
libtest_asm: libtest.c 
	$(CC) $(CFLAGS) -S $^ -o ./gen_assembly/$@-AT.s
	$(CC) $(CFLAGS) -S -masm=intel  $^ -o ./gen_assembly/$@-intel.asm



clean:
	rm *.o *.so  libtest
	rm ./gen_assembly/*.s
	rm ./gen_assembly/*.asm
	rm ./vlunerabilities/test
