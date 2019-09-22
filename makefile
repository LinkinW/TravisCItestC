CC=gcc

SRC=test.c
OBJ=$(SRC:%.c=%.o)
APP=testHello

# for code coverage
CFLAGS=-fprofile-arcs -ftest-coverage
LFLAGS=-fprofile-arcs

all: postbuild $(APP)

postbuild:
	@#mkdir post

$(APP):$(OBJ)
	$(CC) $(LFLAGS) -g $(OBJ) -o $(APP)

*.o:*.c
	$(CC) $(CFLAGS) -c $< -o $@
	
test:
	./$(APP)
	gcov $(SRC)

.PHONY:clean all test

clean:
	@echo clean up env...
	@-rm -r post
	@-rm $(APP)
	@-rm *.o *.gcov *.gcda *.gcno
