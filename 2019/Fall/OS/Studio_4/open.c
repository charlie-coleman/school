#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

int main(int argc, char* argv[]) {
	if (argc != 2) {
		printf("open requires 1 argument: ./open <file path>\n");
		return 0;
	}
	int errnum;
	int fd = open(argv[1], O_RDONLY);
	if (fd == -1) {
		errnum = errno;
		perror("Error opening file");
		return 0;
	}
	int bread;
	char buffer[16];
	do {
		bread = read(fd, &buffer, 16);
		if (bread == -1) {
			errnum = errno;
			perror("Error reading file: %s\n");
			return 0;
		}
		write(1, buffer, bread);
	} while (bread != 0 && bread != -1);
	return 0;
}
