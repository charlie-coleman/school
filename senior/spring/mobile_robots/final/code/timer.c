/*
 * timer.c
 *
 * Created: 5/12/2019 11:43:44 AM
 *  Author: colemanct
 */ 

#include <avr/io.h>
#include "serial.h"

int timerCount = 0;
int comp = 0;

void timerInit(int msec) {

    // Set the Timer Mode to CTC
    TCCR0A |= (1 << WGM01);

    // Set the value that you want to count to
    OCR0A = 0x9C;
	
	comp = msec/10;

    TIMSK0 |= (1 << OCIE0A);    //Set the ISR COMPA vect

    TCCR0B |= (1 << CS02) | (1 << CS00);
    // set prescaler to 256 and start the timer
}

void timerInc() {
	timerCount ++;
}

int timerDone() {
	return (timerCount >= comp);
}

void timerReset() {
	timerCount = 0;
}
