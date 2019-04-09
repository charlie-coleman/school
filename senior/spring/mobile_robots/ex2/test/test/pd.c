/*
 * pd.c
 *
 * Created: 4/6/2019 5:19:34 PM
 *  Author: colemanct
 */ 

#include <avr/io.h>
#include <stdio.h>

#define kp 10
#define kd 10

int previousError = 0;

int pdCalc(int input, int setPoint) {
	int error = setPoint - input;
	int diff = error - previousError;
	
	int ret = (int)(kp*error + kd*diff);
	
	previousError = error;
	
	return ret;
}