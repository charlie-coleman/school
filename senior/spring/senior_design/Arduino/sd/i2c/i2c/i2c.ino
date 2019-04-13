#include <Servo.h>
#include <Wire.h>
#include <I2CEncoder.h>
#include <PID_v1.h>

const int LEFT_MOTOR_PIN = 6;
const int RIGHT_MOTOR_PIN = 7;
const int CLAW_PIN = 8;

const int MAX_FWD_SPEED = 150;
const int MIN_FWD_SPEED = 105;
const int MAX_BKWD_SPEED = 30;
const int MIN_BKWD_SPEED = 75;

const int CW = 1;
const int CCW = -1;

Servo left, right, claw;
I2CEncoder leftEncoder, rightEncoder;
double wheelCirc = 3.25*PI;
double gearRatio = 0.6;
double robotDiam = 9.65625;

//Define Variables we'll be connecting to
double Setpoint, Input, Output;

//Specify the links and initial tuning parameters
double Kp=150, Ki=0, Kd=0, rRot, lRot;
PID myPID(&Input, &Output, &Setpoint, Kp, Ki, Kd, DIRECT);

int clawIsClosed = 1;

void setup() {
  Wire.begin();
  Serial.begin(9600);
  rightEncoder.init(MOTOR_393_TORQUE_ROTATIONS, MOTOR_393_TIME_DELTA);
  leftEncoder.init(MOTOR_393_TORQUE_ROTATIONS, MOTOR_393_TIME_DELTA);
  leftEncoder.setReversed(true);
  rightEncoder.zero();
  leftEncoder.zero();
  left.attach(LEFT_MOTOR_PIN);
  right.attach(RIGHT_MOTOR_PIN);
  claw.attach(CLAW_PIN);
  
  rRot = rightEncoder.getPosition();
  lRot = leftEncoder.getPosition();
  Input = rRot - lRot;
  Setpoint = 0;
  myPID.SetMode(AUTOMATIC);
  
  turnDeg(90, CW);
  delay(5000);
  turnDeg(90, CCW);
}

void loop() {
  
  // delay(5000);
  // pidForward(20, 20);
  // delay(5000);
  // pidBackward(20, 20);
}

void pidForward(double s, double distance) {
  zeroEncoders();
  int targetSpeed = 90 + s;
  int lSpeed = targetSpeed, rSpeed = targetSpeed;
  setForwardSpeeds(lSpeed, rSpeed);
  getRot();
  double rotations = 0;
  Serial.println("~~~~~~~~~~~FORWARDS~~~~~~~~~~~");
  while (rotations*gearRatio*wheelCirc < distance) {
    Input = rRot-lRot;
    Setpoint = 0;
    myPID.Compute();
    rSpeed = targetSpeed + Output/2;
    lSpeed = targetSpeed - Output/2;
    setForwardSpeeds(lSpeed, rSpeed);
    printSpeeds(lSpeed, rSpeed);
    delay(20);
    getRot();
    rotations = max(lRot, rRot);
  }
  stopMovement();
}

void pidBackward(double s, double distance) {
  zeroEncoders();
  int targetSpeed = 90 - s;
  int lSpeed = targetSpeed, rSpeed = targetSpeed;
  setForwardSpeeds(lSpeed, rSpeed);
  getRot();
  double rotations = 0;
  Serial.println("~~~~~~~~~~~BACKWARDS~~~~~~~~~~~");
  while (rotations*gearRatio*wheelCirc > -1*distance) {
    Input = rRot-lRot;
    Setpoint = 0;
    myPID.Compute();
    rSpeed = targetSpeed - Output/2;
    lSpeed = targetSpeed + Output/2;
    setBackwardSpeeds(lSpeed, rSpeed);
    printSpeeds(lSpeed, rSpeed);
    delay(20);
    getRot();
    rotations = max(lRot, rRot);
  }
  stopMovement();
}

void turnDeg(int deg, int dir) {
  zeroEncoders();
  int targetSpeed = 25;
  int lSpeed = 90 + (dir*targetSpeed), rSpeed = 90 + (-1*dir*targetSpeed);
  getRot();
  double rotations = 0;
  double robotCirc = (dir == CW) ? PI*10 : PI*robotDiam;
  double dist = 2*(deg/360.0)*robotCirc;
  while(rotations*gearRatio*wheelCirc < dist) {
    Input = rRot + lRot;
    Setpoint = 0;
    myPID.Compute();
    rSpeed = 90 + (-1 * dir * (targetSpeed + Output/2));
    lSpeed = 90 + (dir * (targetSpeed + Output/2));
    setSpeeds(lSpeed, rSpeed);
    delay(20);
    getRot();
    rotations = max(dir*lRot, -1*dir*rRot);
  }
  stopMovement();
}

void getRot() {
  rRot = rightEncoder.getPosition();
  lRot = leftEncoder.getPosition();
}

void setForwardSpeeds(int lSpeed, int rSpeed) {
  lSpeed = (lSpeed > MAX_FWD_SPEED) ? MAX_FWD_SPEED : lSpeed;
  lSpeed = (lSpeed < MIN_FWD_SPEED) ? MIN_FWD_SPEED : lSpeed;
  rSpeed = (rSpeed > MAX_FWD_SPEED) ? MAX_FWD_SPEED : rSpeed;
  rSpeed = (rSpeed < MIN_FWD_SPEED) ? MIN_FWD_SPEED : rSpeed;
  
  left.write(lSpeed);
  right.write(rSpeed);
}

void setBackwardSpeeds(int lSpeed, int rSpeed) {
  lSpeed = (lSpeed > MIN_BKWD_SPEED) ? MIN_BKWD_SPEED : lSpeed;
  lSpeed = (lSpeed < MAX_BKWD_SPEED) ? MAX_BKWD_SPEED : lSpeed;
  rSpeed = (rSpeed > MIN_BKWD_SPEED) ? MIN_BKWD_SPEED : rSpeed;
  rSpeed = (rSpeed < MAX_BKWD_SPEED) ? MAX_BKWD_SPEED : rSpeed;
  
  left.write(lSpeed);
  right.write(rSpeed);
}

void setSpeeds(int lSpeed, int rSpeed) {
  lSpeed = (lSpeed > MIN_FWD_SPEED) ? MAX_FWD_SPEED : lSpeed;
  lSpeed = (lSpeed < MAX_BKWD_SPEED) ? MAX_BKWD_SPEED : lSpeed;
  rSpeed = (rSpeed > MAX_FWD_SPEED) ? MAX_FWD_SPEED : rSpeed;
  rSpeed = (rSpeed < MAX_BKWD_SPEED) ? MAX_BKWD_SPEED : rSpeed;
  
  left.write(lSpeed);
  right.write(rSpeed); 
}

void zeroEncoders() {
  rightEncoder.zero();
  leftEncoder.zero();  
}

void stopMovement() {
  left.write(90);
  right.write(90);  
}

void printSpeeds(int lSpeed, int rSpeed) {
  char rString[30], lString[30];
  char rRotS[10], lRotS[10];
  dtostrf(rRot, 2, 3, rRotS);
  dtostrf(lRot, 2, 3, lRotS);
  sprintf(rString, "rSpeed: %d, rRot: %s", rSpeed, rRotS);
  sprintf(lString, "lSpeed: %d, lRot: %s", lSpeed, lRotS);
  Serial.println(rString);
  Serial.println(lString);
}

void changeClaw() {

}
