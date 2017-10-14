import java.awt.geom.Point2D;

class myCyrcle {
 float x, y, r, o, d;
 myPoint myP;
 Point2D p;
 
 public myCyrcle(float x, float y, float r, float o){
   this.x = x;
   this.y = y;
   this.r = r;
   this.o = o;
   d = r * 0.9;
   myP = new myPoint( d, 0);
   p = new Point2D.Float();
 }
 
  public void draw(){
    pushMatrix();
    translate(x, y);
    rotate(o);
    stroke(128);
    fill(32);
    ellipse(0, 0, r + r, r + r);
    line( -r / 2, 0, r / 2, 0 );
    line( 0, -r / 2, 0, r / 2 );
    myP.draw();
    popMatrix();
  }
  
  public void turn(float o){
    this.o += o;
    this.o %= TWO_PI;
  }
  
  public Point2D getPos (){
    
    p.setLocation( x + cos( o ) * d, y + sin( o ) * d );
    return p;
  }
  
  public void setPos (Point2D p){
    
    o = atan2( (float)(p.getY() - y), (float)(p.getX() - x));
  }
  
  public Point2D getCen (){

    p.setLocation( x , y );    
    return p;
  }
  
  public double getR (){

    return d;
  }

}