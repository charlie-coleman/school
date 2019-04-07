/*
 * pwm.c
 *
 * Created: 3/6/2019 2:52:12 PM
 *  Author: colemanct
 */
#include <avr/io.h>

void pwmInit() {
	DDRD |= (1 << DDD6);
	DDRD |= (1 << DDD5);
	OCR0A = 0;
	OCR0B = 0;
	TCCR0A |= (1 << COM0A1);
	TCCR0A |= (1 << COM0B1);
	TCCR0A |= (1 << WGM01) | (1 << WGM00);
	TCCR0B |= (1 << CS02) | (1 << CS00);
}

void pwmSet(int motor, int usHigh) {
	if (motor == 1)
		OCR0A = usHigh / 78;
	else if (motor == 2)
		OCR0B = usHigh / 78;
}