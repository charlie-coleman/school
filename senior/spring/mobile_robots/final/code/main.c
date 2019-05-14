/*
 * mobilebotsFinal.c
 *
 * Created: 5/6/2019 2:09:38 PM
 * Author : colemanct
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <string.h>
#include "pwm.h"
#include "serial.h"
#include "pd.h"
#include "ir.h"
#include "timer.h"

#define setpoint 1800

#define MAX_SPEED 2250
#define DESIRED_SPEED 3000
#define MIN_SPEED 3700

int fitInBounds(int val) {
	val = (val < MAX_SPEED) ? MAX_SPEED : val;
	val = (val > MIN_SPEED) ? MIN_SPEED : val;
	return val;
}

ISR (TIMER0_COMPA_vect) {
	timerInc();
}

int main(void) {
	serialInit();
	pwmInit();
	irInit();
	sei();
	timerInit(20);
	char tempString[64] = {0};
	
	int rMotorSpeed = DESIRED_SPEED;
	int lMotorSpeed = DESIRED_SPEED;
	
    while (1) {
		timerReset();
    
		uint16_t val = irLinRead();
    
		int pd = pdCalcDoor(val, setpoint, 3);
     	
		lMotorSpeed = DESIRED_SPEED - pd/2;
		rMotorSpeed = DESIRED_SPEED + pd/2;
		lMotorSpeed = fitInBounds(lMotorSpeed);
		rMotorSpeed = fitInBounds(rMotorSpeed);
     	
		pwmSet(LEFT_MOTOR, lMotorSpeed);
		pwmSet(RIGHT_MOTOR, rMotorSpeed);

		sprintf(tempString, "%d\r\n", (setpoint - val));
		serialPrint(tempString, strlen(tempString));
    		
		while(!timerDone()) {}
    }
}

