#include <Servo.h>
#include <Wire.h>

Servo left, right;

void setup() {
  left.attach(6);
  right.attach(7);
}

void loop() {
//  left.write(60);
//  right.write(120);
//  delay(500);
//  left.write(120);
//  right.write(60);
//  delay(500);
}

void forward(int speed, int time) {
  left.write(90+(80*speed/100));
  right.write(90-(80*speed/100));
  delay(time);
  left.write(90);
  right.write(90); 
}


void backward(int speed, int time) {
  left.write(90-(80*speed/100));
  right.write(90+(80*speed/100));
  delay(time);
  left.write(90);
  right.write(90); 
}
