import java.awt.geom.Point2D;

class myStick{
  Point2D p1, p2;
  double l;
  
  public myStick(Point2D p1, Point2D p2){
   this.p1 = new Point2D.Double( p1.getX(), p1.getY() );
   this.p2 = new Point2D.Double( p2.getX(), p2.getY() );
   l = p1.distance(p2);
  }
  
  public void draw(){
    //pushMatrix();
    //translate(x, y);
    stroke(255, 64);
    strokeWeight(25);
    //noFill();
    line( (float)p1.getX(),(float)p1.getY(), (float)p2.getX(), (float)p2.getY());
    strokeWeight(1);
    //popMatrix();
  }
  
  public void setPos( Point2D A, Point2D B ){
    p1.setLocation( A );
    p2.setLocation( B );
  }
  
  public double getL(){
    return l;
  }
  
}