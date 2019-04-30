#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

using namespace std;

int main()
{
        int fd = open("./msf1", O_RDWR);
        printf("%d\n", errno);
        char a[10] = "hello2";
        write(fd, (void *)a, 6);
        lseek(fd, -6, SEEK_CUR);
        read(fd, a, 6);
        printf("%s\n", a);
}