/*
 * ir.h
 *
 * Created: 4/3/2019 3:22:30 PM
 *  Author: colemanct
 */ 


#ifndef IR_H_
#define IR_H_

#define IR_PIN	0

void irInit();
uint16_t irRead();
uint16_t irLinRead();


#endif /* IR_H_ */