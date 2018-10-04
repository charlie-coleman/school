#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <rpc/des_crypt.h>

int main(int argc, char *argv[]) {

	if (argc != 5) {
		printf("Improper formatting. Please enter:\nencrypt <key> <input file> <output file> <mode>\n");
		return 0;
	}

	char *key = argv[1];
	char *read_path = argv[2];
	char *write_path = argv[3];
	char *mode = argv[4];
	int errnum;

	if (strlen(key) != 8) {
		printf("Key must be 8 characters.\n");
		return 0;	
	}
	
	if (strtol(mode) != 0 && strtol(mode) != 1) {
		fprintf(stderr, "Mode must be 0 or 1.\n", 21);
		return 0;
	}

	des_setparity(key);
	int fr = open(read_path, O_RDONLY);
	if (fr == -1) {
		errnum = errno;
		fprintf(stderr, "Error opening input file: %s\n", strerror(errnum));
		return 0;
	}
	int fw = open(write_path, O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
	if (fw == -1) {
		errnum = errno;
		fprintf(stderr, "Error opening output file: %s\n", strerror(errnum));
	}
	int bread;
	int buffSize = 4096;
	char buff[buffSize];
	do {
		bread = read(fr, &buff, buffSize);
		if (bread == -1) {
			fprintf(stderr, "Error reading input file: %s\n", strerror(errnum));
			return 0;
		}
		int eightBuffLength = (bread + 8 - 1) & -8;
		char eightBuff[eightBuffLength+1];
		int i = 0;

		while(i < eightBuffLength) {
			if(i < bread) {
				eightBuff[i]=buff[i];
			} else if(i < eightBuffLength) {
				eightBuff[i]=' ';
			}
			i++;
		}
		eightBuff[eightBuffLength] = '\0';

		if (atoi(mode) == 0) ecb_crypt(key, eightBuff, eightBuffLength, DES_ENCRYPT);
		else if (atoi(mode) == 1) ecb_crypt(key, eightBuff, eightBuffLength, DES_DECRYPT);

		write(fw, eightBuff, eightBuffLength);
	} while(bread != 0 && bread != -1);

	int e = close(fr);
	if (e == -1) {
		errnum = errno;
		fprintf(stderr, "Error closing input file: %s\n", strerror(errnum));
	}
	e = close(fw);
	if (e == -1) {
		errnum = errno;
		fprintf(stderr, "Error closing output file: %s\n");
	}

	return 0; 
}
