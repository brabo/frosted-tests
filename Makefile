CC=gcc

CFLAGS=-I. --std=gnu99 -I./include -lpthread
#  -fsanitize=address

TESTS_OBJ=src/tests.o src/basename.o src/chdir.o src/dirname.o src/mem.o src/pthreads.o

LDFLAGS=
LDLIBS=

tests: $(TESTS_OBJ)
	$(CC) -o $@ $(TESTS_OBJ) $(CFLAGS) $(LDFLAGS) $(LDLIBS)
	rm -f $(TESTS_OBJ)


all: tests

clean:
	rm -f src/*.o tests
