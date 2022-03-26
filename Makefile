CC = gcc

CFLAGS = -Wall -Wextra -pedantic -Os -std=gnu18
BINS = assembly libtest  test libstr.so file_handle.so

all: $(BINS)

libstr.o: libstr.c  libstr.h 
	${CC} ${CFLAGS} -c libstr.c 

libstr.so: libstr.c  libstr.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ libstr.c  -lc


#libtest: libtest.c libastr.o
#	$(CC) $(CFLAGS) -o $@ $^

file_handle.o: file_handle.c file_handle.h 
	${CC} ${CFLAGS} -c file_handle.c

file_handle.so: file_handle.c file_handle.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ file_handle.c -lc

libtest: libtest.c file_handle.o libstr.o 
	$(CC) $(CFLAGS) -o $@ $^
	#$(CC) $(CFLAGS) -S $@.s $^

test: ./vlunerabilities/test.c file_handle.o libstr.o 
	$(CC) $(CFLAGS) -o $@ $^
	mv $@ ./vlunerabilities/
	

assembly: libtest.c 
	$(CC) $(CFLAGS) -S $^ -o ./gen_assembly/libtest.s



clean:
	rm *.o *.so  libtest
	rm ./gen_assembly/*.s
