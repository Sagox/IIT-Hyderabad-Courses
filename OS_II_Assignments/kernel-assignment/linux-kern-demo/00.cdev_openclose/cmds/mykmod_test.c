#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
#include<errno.h>
#include <unistd.h>


int main(int argc, char *argv[])
{
	int fd, ret;

	if (argc != 2) {
		printf("Usage: %s <filename>\n", argv[0]);
		return 1;
	}

	printf("Going to open(%s)\n", argv[1]);
	fd = open(argv[1], O_RDWR);
	if (fd<=0) {
		printf("open failed fd:%d errno:%d\n", fd, errno);
		exit(1);
	}
	printf("opened the file\n");

	printf("Going to close(fd)\n");
	ret = close(fd);
	if (ret < 0) {
		printf("close(fd) failed\n");
		exit(1);
	}
	printf("closed the file\n");
	fd = -1;

	return 0;
}
