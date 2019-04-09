/*
 * pwm.h
 *
 * Created: 4/3/2019 3:18:17 PM
 *  Author: colemanct
 */ 


#ifndef PWM_H_
#define PWM_H_

#define RIGHT_MOTOR 1
#define LEFT_MOTOR 2

void pwmInit();
void pwmSet(int motor, int usHigh);

#endif /* PWM_H_ */