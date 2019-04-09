/*
 * test.c
 *
 * Created: 4/3/2019 3:16:53 PM
 * Author : colemanct
 */ 

#include <avr/io.h>
#include <stdio.h>
#include "serial.h"
#include "pwm.h"
#include "ir.h"
#include "pd.h"

#define MAX_SPEED 1650
#define DESIRED_SPEED 1700
#define MIN_SPEED 1720

int fitInBounds(int val) {
	val = (val < MAX_SPEED) ? MAX_SPEED : val;
	val = (val > MIN_SPEED) ? MIN_SPEED : val;
	
	return val;
}

int main(void) {
	serialInit();
	pwmInit();
	irInit();
	
	int setPoint = 32;
	
	char tempString[30];
	int rMotorSpeed = DESIRED_SPEED;
	int lMotorSpeed = DESIRED_SPEED;
	
    while (1) {
		uint16_t irval = irLinRead();
		
		int pd = pdCalc(irval, setPoint);
		
		lMotorSpeed = DESIRED_SPEED - pd/2;
		rMotorSpeed = DESIRED_SPEED + pd/2;
		lMotorSpeed = fitInBounds(lMotorSpeed);
		rMotorSpeed = fitInBounds(rMotorSpeed);
		pwmSet(LEFT_MOTOR, lMotorSpeed);
		pwmSet(RIGHT_MOTOR, rMotorSpeed);
		
		sprintf(tempString, "IR Value: %d\n\r", irval);
		serialPrint(tempString);
		
    }
}

// 18 ~= 7
// 22 ~= 8.66
// 26 ~= 10.23
// 30 ~= 11.8