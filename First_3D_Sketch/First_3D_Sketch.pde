float rotX, rotY;

color red = #FF0303;
color blue = #0365FF;
color teal = #03FFC2;
color green = #1DB42D;
color yellow = #DDE849;
color orange = #FF9100;
color lblue = #00ECFF;
color dblue = #08585A;
color purple = #B200FF;
color pink = #FF00C0;
color brown = #64412A;

void setup() {
  size(800, 800, P3D);
  rotX = radians(45);
  rotY = radians(45);
}

void draw() {
  background(orange);
  
  ball(width/2, height/3, 0, teal, 100);
  
  cube(0 + 100, 2*height/3, 0, lblue, 100);
  cube(width - 100, 2*height/3, 0, purple, 100);
}

void cube(float x, float y, float z, color c, float size){
  pushMatrix();
  translate(x, y, z);
  
  rotateX(rotX);
  rotateY(rotY);
  //rotateZ();
  
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size); //side length
  popMatrix();
}

void ball(float x, float y, float z, color c, float size){
  pushMatrix();
  translate(x, y, z);
  rotateX(rotX);
  rotateY(rotY);
  //rotateZ();
  
  strokeWeight(2);
  fill(c);
  sphere(size);
  popMatrix();
  
}

void mouseDragged() {
  rotX = rotX + (pmouseY - mouseY) * 0.01;
  rotY = rotY + (pmouseX - mouseX) * -0.01;
}
