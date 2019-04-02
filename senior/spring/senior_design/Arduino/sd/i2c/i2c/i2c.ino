#include <Servo.h>
#include <Wire.h>
#include <I2CEncoder.h>
#include <PID_v1.h>

Servo left, right;
I2CEncoder leftEncoder, rightEncoder;
double wheelCirc = 3.25*3.14159265;
double gearRatio = 0.6;

//Define Variables we'll be connecting to
double Setpoint, Input, Output;

//Specify the links and initial tuning parameters
double Kp=1500, Ki=0, Kd=0, rRot, lRot;
PID myPID(&Input, &Output, &Setpoint, Kp, Ki, Kd, DIRECT);

void setup() {
  Wire.begin();
  Serial.begin(9600);
  rightEncoder.init(MOTOR_393_TORQUE_ROTATIONS, MOTOR_393_TIME_DELTA);
  leftEncoder.init(MOTOR_393_TORQUE_ROTATIONS, MOTOR_393_TIME_DELTA);
  leftEncoder.setReversed(true);
  rightEncoder.zero();
  leftEncoder.zero();
  left.attach(6);
  right.attach(7);
  
  rRot = rightEncoder.getPosition();
  lRot = leftEncoder.getPosition();
  Input = rRot - lRot;
  Setpoint = 0;
  myPID.SetMode(AUTOMATIC);
}

void loop() {
  delay(5000);
  pidForward(25, 20);
  delay(5000);
  pidBackward(25, 20);
}

void pidForward(double s, double distance) {
  rightEncoder.zero();
  leftEncoder.zero();
  int lSpeed = 90+s, rSpeed = 90+s;
  setSpeeds(lSpeed, rSpeed);
  getRot();
  double rotations = 0;
  Serial.println("~~~~~~~~~~~FORWARDS~~~~~~~~~~~");
  while (rotations*gearRatio*wheelCirc < distance) {
    Input = rRot-lRot;
    Setpoint = 0;
    myPID.Compute();
    rSpeed += Output/2;
    lSpeed -= Output/2;
    setSpeeds(lSpeed, rSpeed);
    char rString[30], lString[30];
    char rRotS[10], lRotS[10];
    dtostrf(rRot, 2, 3, rRotS);
    dtostrf(lRot, 2, 3, lRotS);
    sprintf(rString, "rSpeed: %d, rRot: %s", rSpeed, rRotS);
    sprintf(lString, "lSpeed: %d, lRot: %s", lSpeed, lRotS);
    Serial.println(rString);
    Serial.println(lString);
    getRot();
    rotations = max(lRot, rRot);
  }
  stopMovement();
}

void pidBackward(double s, double distance) {
  rightEncoder.zero();
  leftEncoder.zero();
  int lSpeed = 90-s, rSpeed = 90-s;
  setSpeeds(lSpeed, rSpeed);
  getRot();
  double rotations = 0;
  Serial.println("~~~~~~~~~~~BACKWARDS~~~~~~~~~~~");
  while (rotations*gearRatio*wheelCirc > -1*distance) {
    Input = rRot - lRot;
    Setpoint = 0;
    myPID.Compute();
    rSpeed -= Output/2;
    lSpeed += Output/2;
    setSpeeds(lSpeed, rSpeed);
    char rString[30], lString[30];
    char rRotS[10], lRotS[10];
    dtostrf(rRot, 2, 3, rRotS);
    dtostrf(lRot, 2, 3, lRotS);
    sprintf(rString, "rSpeed: %d, rRot: %s", rSpeed, rRotS);
    sprintf(lString, "lSpeed: %d, lRot: %s", lSpeed, lRotS);
    Serial.println(rString);
    Serial.println(lString);
    getRot();
    rotations = max(lRot, rRot);
  }
  stopMovement();
}

void getRot() {
    rRot = rightEncoder.getPosition();
    lRot = leftEncoder.getPosition();
}

void setSpeeds(int lSpeed, int rSpeed) {
  left.write(lSpeed);
  right.write(rSpeed);
}

void stopMovement() {
  left.write(90);
  right.write(90);  
}
