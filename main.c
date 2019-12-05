#include<stdio.h>
#include<stdlib.h>
int main(int argc,char *argv[])
{
	int a,b;
	
	printf("Enter two numbers:");
	//scanf("%d %d",&a,&b);
	a=atoi(argv[1]);
	b=atoi(argv[2]);
	sum(a,b);
	mul(a,b);
}
