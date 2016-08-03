#include <string.h>
#include "convstr.h"

void gconvstrs(int* in, int size, int type, int* out)
{
	int count;
	// 0-to convert to lowercase
	// 1-to convert to uppercase
	for(count=0;count<size;count++)
	{
		printf("%c ", in[count]);
		if(type==0)
		{	out[count]=tolower(in[count]);
			printf("%c\n", out[count]);
		}
		else
			out[count]=toupper(in[count]);
	}
}
