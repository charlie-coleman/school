/*
 * serialFcns.c
 *
 * Created: 3/1/2019 2:32:30 PM
 *  Author: colemanct
 */
 #include <avr/io.h>

void serialInit() {
	UBRR0H = (unsigned char)(103 >> 8);
	UBRR0L = (unsigned char)(103 & 0xFF);
	
	UCSR0B |= (1 << RXEN0)|(1<<TXEN0);
}

void serialPrint(char* str) {
	int i = 0;
	do {
		while((UCSR0A & (1 << UDRE0)) == 0) {}
		UDR0 = str[i];
		i++;
	} while(str[i] != '\0');
}