CC=gcc

SRC=test.c
APP=test

all: $(APP)
	$(CC) -g $< -o $@
	
.PHONY:clean

clean:
    rm $(APP)
    rm *.o