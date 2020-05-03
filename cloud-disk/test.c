#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "fcgi_stdio.h"

int main(int argc, char *argv[])
{
	int count = 0;

	//阻塞等待并监听某个端口，等待Nginx将数据发过来
	while (FCGI_Accept() >= 0)
	{
		//如果想得到数据，需要从stdin去读，实际上从Nginx上去读
		//如果想上传数据，需要往stdout写，实际上是给Nginx写数据
		printf("Content-type: text/html\r\n");
		printf("\r\n");
		printf("<title>Fast CGI Hello!</title>");
		printf("<h1>Fast CGI Hello!</h1>");
		//SERVER_NAME：得到server的host名称
		printf("Request number %d running on host <i>%s</i>\n", ++count, getenv("SERVER_NAME"));
	}

	return 0;
}
