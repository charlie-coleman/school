/*
 * pd.h
 *
 * Created: 4/6/2019 5:19:47 PM
 *  Author: colemanct
 */ 


#ifndef PD_H_
#define PD_H_

int pdCalc(int input, int setPoint);
int pdCalcCirc(int input, int setPoint);
int pdCalcSquare(int input, int setPoint);
int pdCalcDoor(int input, int setPoint, int numDoors);

#endif /* PD_H_ */