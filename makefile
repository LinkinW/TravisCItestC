CC=gcc

SRC=test.c
OBJ=$(SRC:%.c=%.o)
APP=test

# for code coverage
CFLAGS=-fprofile-arcs -ftest-coverage
LFLAGS=-fprofile-arcs

all: postbuild $(APP)

postbuild:
	mkdir post

$(APP):$(OBJ)
	$(CC) $(LFLAGS) -g $(OBJ) -o $(APP)

*.o:*.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY:clean all

clean:
	@echo clean up env...
	@-rm -r post
	@-rm $(APP)
	@-rm *.o
