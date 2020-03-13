#include <Servo.h>
Servo myServo;


int mouseLoc;
int mouseRat;
int mouseFin;

void setup(){

pinMode(6,OUTPUT);
myServo.attach(6);
Serial.begin(9600);
}

void loop(){

if (Serial.available()) {
  mouseLoc = Serial.read();
  mouseRat = mouseLoc*180;
  mouseFin = mouseRat/200;


}
  myServo.write(mouseFin);

}
