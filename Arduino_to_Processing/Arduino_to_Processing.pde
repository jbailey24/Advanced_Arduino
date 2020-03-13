import processing.serial.*;
Serial myPort;
String myStr;
float myNum;
float lastrealtheta;
float inversetheta;
PFont f;

void setup(){
  
  size(400,400);
  
  println("Available serial ports:");
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[1], 9600);
}

void draw(){
 
  background(24763467);
  fill(0);
  textFont(createFont("Times New Roman", 25), 15);
  text("no vroom :(",18,210);
  text("vroom?",70,130);
  text("vroom!", 280,130);
  text("VROOOOM!!",305,210);
   
    if ( myPort.available() > 0) 
  { 
    myStr = myPort.readStringUntil('\n');
    if(myStr != null) 
    {
      myStr = myStr.trim();
      myNum = Integer.parseInt(myStr);
    }
    
     inversetheta= map(myNum,0,1023,-PI/12, 13*PI/12);
     float realtheta = PI-inversetheta;
     line(200,200, 200+100*cos(realtheta), 200-100*sin(realtheta));
     
     
  } 
 fill(2534437); 
 circle(200, 200, 200);

 stroke(0);

 
}
