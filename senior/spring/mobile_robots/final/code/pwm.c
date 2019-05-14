/*
 * pwm.c
 *
 * Created: 3/6/2019 2:52:12 PM
 *  Author: colemanct
 */
#include <avr/io.h>

#define TOP 0x9C40

void pwmInit() {
	DDRB |= (1 << DDB1);
	DDRB |= (1 << DDB2);
	OCR1A = 0;
	OCR1B = 0;
	ICR1 = TOP;

    TCCR1A |= (1 << COM1A1)|(1 << COM1B1);
    // set none-inverting mode

    TCCR1A |= (1 << WGM11);
    TCCR1B |= (1 << WGM12)|(1 << WGM13);
    // set Fast PWM mode using ICR1 as TOP
    
    TCCR1B |= (1 << CS11);
    // START the timer with no prescaler
}

void pwmSet(int motor, int usHigh) {
	int val = usHigh / 5;
	val *= 4;
	if (motor == 1)
		OCR1A = (int) val;
	else if (motor == 2)
		OCR1B = (int) val;
}