/*
 * pd.c
 *
 * Created: 4/6/2019 5:19:34 PM
 *  Author: colemanct
 */ 

#include <avr/io.h>


int previousError = 0;
int inited = 0;
int aligned = 0;
int doorCount = 0;
int turningCorner = 0;
int passingDoor = 0;

int pdCalc(int input, int setPoint) {
	double kp = 0.3;
	double kd = 9.0;
	int error = setPoint - input;
	int diff = error - previousError;
	
	int ret = (int)((kp*error) + (kd*diff));
	
	previousError = error;
	
	return ret;
}

int pdCalcCirc(int input, int setPoint) {
	double kp = 10.0;
	double kd = 0.0;
	
	int error = setPoint - input;
	if (!inited) {
		previousError = error;
		inited = 1;
	}
	if (error < -3000 || error > 300) {
		error = -3000;
	}
	int diff = error - previousError;
	
	int ret = (int)((kp*error) + (kd*diff));
	
	previousError = error;
	
	return ret;
}

int pdCalcSquare(int input, int setPoint) {
	double kp = 0.3;
	double kd = 9.0;
	
	int error = setPoint - input;
	if (!inited) {
		previousError = error;
		inited = 1;
	}
	if (error < -2500 || error > 2500) {
		error = -2500;
	}
	int diff = error - previousError;

	
	if (error < 200 && error > -200)
		aligned = 1;
	
	if (aligned) {
		if (diff <= -300 && !passingDoor) {
			passingDoor = 1;
		}
		else if (diff >= 300 && passingDoor) {
			passingDoor = 0;
		}
		
		if (passingDoor) {
			kp = 2.0;
			kd = 0.15;
		}
	}
	
	int ret = (int)((kp*error) + (kd*diff));
	
	previousError = error;
	
	return ret;
}

int pdCalcDoor(int input, int setPoint, int numDoors) {
	double kp = 0.3;
	double kd = 9.0;
	
	int error = setPoint - input;
	if (!inited) {
		previousError = error;
		inited = 1;
	}
	if (error < -2500 || error > 2500) {
		error = -2500;
	}
	
	int diff = error - previousError;

	
	if (error < 200 && error > -200)
		aligned = 1;
	
	if (aligned) {
		if (diff <= -300 && !passingDoor) {
			doorCount ++;
			passingDoor = 1;
		}
		else if (diff >= 300 && passingDoor) {
			passingDoor = 0;
		}
		
		if (passingDoor && doorCount < numDoors) {
			previousError = error;
			return 0;
		}
		else if (passingDoor && doorCount == numDoors) {
			kp = 2.0;
			kd = 0.15;
		}
	}
	
	int ret = (int)((kp*error) + (kd*diff));
	
	previousError = error;
	
	return ret;
}