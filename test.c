#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct
{
    char name[50];
    int init_flag;
    int count;
}test_t,*test_handle;

int main()
{
    test_handle p = (test_handle)malloc(sizeof(test_t));
    memset(p,0,sizeof(test_t));
    strcpy(p->name,"hello module");
    p->init_flag = 1;
    p->count = 1;;
	printf("module name:%s,count=%d,init_flag=%d\n",p->name,p->count,p->init_flag);


    free(p);
	return 0;
}
