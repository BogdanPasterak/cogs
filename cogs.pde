Vector v1;

void setup() {
  size(1200,700);
  frameRate(50);
  // test class Vector
  v1 = new Vector();
  v1.X(23.6); 
  println(v1.X());
  v1.Y(135);
}

void draw() {
  background(0);
  stroke(255);
  line(0, 0, v1.X(), v1.Y());
  
  
}