float o = 0;
//float p1x, p1y, p2x, p2y, p3x, p3y;
myCyrcle c1, c2;
myStick s;
Point2D p;
myTwoPoint tp;

void setup() {
  size(1100, 500);
  frameRate(50);
  //background(0);
  c1 = new myCyrcle(300, 220, 199, HALF_PI );
  c2 = new myCyrcle(800, 220, 200, HALF_PI );
  o = TWO_PI / 100;
  p = new Point2D.Float();
  s = new myStick( c1.getPos(), c2.getPos() );
  tp = new myTwoPoint();
}

void draw() {
  background(0); //<>//
  
  c1.draw();
  c2.draw();
  s.draw();
  c1.turn(o / 4);
  tp = tp.count(c1.getPos(), c2.getCen(), s.getL(), c2.getR() );
  //println( tp.p1 );
  if ( tp.p1.distance(c2.getPos()) < tp.p2.distance(c2.getPos())){// &&
//      (int)tp.p1.getX() != 979 && (int)tp.p1.getY() != 222  ){
    c2.setPos(tp.p1);
    s.setPos( c1.getPos(), tp.p1 );
  } else {
    c2.setPos(tp.p2);
    s.setPos( c1.getPos(), tp.p2 );
  }
  //p = c1.getPos();
  
  //println( p.distance( c2.getPos() ) );
  //println(p.getX() + "   " + p.getY());
  /*
  pushMatrix();
  translate(250, 150);
  rotate(radians(o));
  stroke(255);
  fill(50);
  ellipse(0, 0, 100, 60);
  triangle(30, 0, 38, 0, 30, 5);
  popMatrix();
  */
}