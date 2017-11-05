Vector v1, v2;
Circle c1;

void setup() {
  size(1200,700);
  frameRate(50);
  // test class Vector
  /*
  v1 = new Vector();
  println( v1.D() );
  v2 = new Vector(200, 100);
  v1.X(23.6); 
  println( v1.D() );
  v1.Y(135);
  println( v1.D() );
  //println( v1.D() );
  */
  c1 =  new Circle( 250,150,0,100);
}

void draw() {
  background(0);
  stroke(255);
  // test class Vector
  /*
  line(0, 0, v1.X(), v1.Y());
  line(0, 0, v2.X(), v2.Y());
  v2.D( v2.D() + 0.2 );
  v2.A( v2.A() + 0.01 );
  */
  c1.draw();
  c1.move();
  
}