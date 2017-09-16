CC=gcc

CFLAGS=-I. --std=gnu99 -I./include -fsanitize=address

TESTS_OBJ=src/tests.o src/dirname.o

LDFLAGS=
LDLIBS=

tests: $(TESTS_OBJ)
	$(CC) -o $@ $(TESTS_OBJ) $(CFLAGS) $(LDFLAGS) $(LDLIBS)
	rm -f $(TESTS_OBJ)


all: tests

clean:
	rm -f src/*.o tests
