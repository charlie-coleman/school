//Your name
//The date
//This program illustrates some uses of pointers in C

#include <stdio.h>

char linString[] = "Linux!";
int  linSize = 6;

char *winString = "Windows!";
int  winSize = 8;

int main ( int argc, char* argv[] ){
	int i = 0;

	while (i < linSize) {
		printf("%c\n", linString[i]);
		i++;
	}

	i = 0;
	while (i < winSize) {
		printf("%c\n", *(winString + i));
		i++;
	}

	i = 0;
	while (i < winSize) {
		printf("%s\n", (winString + i));
		i++;
	}

	linString[0] = 'M';

	i = 0;
	while (i < linSize) {
		printf("%c\n", linString[i]);
		i++;
	}

	// winString[0] = 'M';

	return 0;
}
