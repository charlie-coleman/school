/*
 * serialFcns.c
 *
 * Created: 3/1/2019 2:32:30 PM
 *  Author: colemanct
 */
#include <avr/io.h>
#include <avr/interrupt.h>

void serialInit() {
	UBRR0H = (unsigned char)(103 >> 8);
	UBRR0L = (unsigned char)(103 & 0xFF);
	
	UCSR0B |= (1 << RXEN0)|(1<<TXEN0);
}

void serialPrint(char* str, int length) {
	for (int i = 0; i < length; i++) {
		while((UCSR0A & (1 << UDRE0)) == 0) {}
		UDR0 = str[i];
	}
}