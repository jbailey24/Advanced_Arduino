PFont f;

void setup(){

  size(300, 300);
 
}

void draw(){

  background(147474744);
  textFont(createFont("Times New Roman", 25), 25);
  fill(0);
  text("Hello World!",87,155);
  float a = random(0, 300);
  float b = random(0, 300);
  ellipse(a, b, 20, 20);
  delay(50);
}
