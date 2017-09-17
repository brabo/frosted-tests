CC=gcc

CFLAGS=-I. --std=gnu99 -I./include -fsanitize=address -lpthread

TESTS_OBJ=src/tests.o src/basename.o src/dirname.o src/pthreads.o

LDFLAGS=
LDLIBS=

tests: $(TESTS_OBJ)
	$(CC) -o $@ $(TESTS_OBJ) $(CFLAGS) $(LDFLAGS) $(LDLIBS)
	rm -f $(TESTS_OBJ)


all: tests

clean:
	rm -f src/*.o tests
