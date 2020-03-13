import processing.serial.*;
Serial myPort;

void setup(){
  
  println("Available serial ports:");
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[1], 9600);
  
  size(200,200);
  background(25828225);
  
  line(100,0,100,200);
  stroke(0);
  
}

void draw(){
 mouseMoved();
}
  
void mouseMoved(){
  myPort.write(mouseX);
  
}
