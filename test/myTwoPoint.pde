import java.awt.geom.Point2D;

class myTwoPoint{
  public Point2D p1, p2;
  
  public myTwoPoint(){
   p1 = new Point2D.Float();
   p2 = new Point2D.Float();
  }
  
  public void setP1( float x, float y ){
    p1.setLocation(x, y);
  }

  public void setP2( float x, float y ){
    p2.setLocation(x, y);
  }
  
  public Point2D getP1(){
    return p1;
  }
  
  public Point2D getP2(){
    return p2;
  }
  
  public myTwoPoint count(Point2D A, Point2D B, double b, double a ){
    double c = A.distance(B);
    double alfa, beta;
    
    alfa = acos((float)((b * b + c * c - a * a)/(2 * b * c)));
    beta = atan((float)((B.getY() - A.getY())/(B.getX() - A.getX())));
    //println( degrees((float)alfa) + "   " + degrees((float)beta));
    
    p1.setLocation(A.getX() + cos((float)(beta + alfa)) * b, A.getY() + sin((float)(beta + alfa)) * b);
    p2.setLocation(A.getX() + cos((float)(beta - alfa)) * b, A.getY() + sin((float)(beta - alfa)) * b);
    return this;
  }
}