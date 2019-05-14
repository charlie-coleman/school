/*
 * ir.c
 *
 * Created: 4/3/2019 3:22:19 PM
 *  Author: colemanct
 */
 #include <avr/io.h>

void irInit() {
	ADMUX |= (1 << REFS0);
	ADCSRA |= (1 << ADPS2)|(1 << ADPS1)|(1 << ADPS0);
	DIDR0 |= (1 << ADC0D);
	ADCSRA |= (1 << ADEN);
}

uint16_t irRead() {
	ADCSRA |= (1 << ADSC);
	
	while ( (ADCSRA & (1 << ADSC)) );
	
	return ADC;
}

uint16_t irLinRead() {
	uint16_t val = irRead();
	
	return (500000/val);
}