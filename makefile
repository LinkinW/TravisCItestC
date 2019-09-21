CC=gcc

SRC=test.c
OBJ=$(SRC:%.c=%.o)
APP=test

all: postbuild $(APP)

postbuild:
	mkdir post

$(APP):$(OBJ)
	$(CC) -g $(OBJ) -o $(APP)

*.o:*.c
	$(CC) -c $< -o $@

.PHONY:clean all

clean:
	@echo clean up env...
	@-rm -r post
	@-rm $(APP)
	@-rm *.o
