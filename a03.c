#include"clsscr.h"

int main(int argc,char** argv)
{
	char ch[100];
	int i,j,k;
	printf("test to call asm function\n");
	memset(ch,0,sizeof(ch));
	snprintf(ch,sizeof(ch),"this message will trun-off");
	trunoff(ch,strlen(ch));
	printf("%s\n",ch);
	return 0;
}



