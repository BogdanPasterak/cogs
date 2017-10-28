class Circle extends Element{
  
  public Circle(float x, float y, float a, float d){
    super( x, y, a, d);
    
  }
  
  @Override
  public void draw(){
    pushMatrix();
    stroke(128);
    strokeWeight(10);
    fill(0);
    translate(pos.X(), pos.Y());
    rotate(size.A());
    ellipse(0, 0, size.D() * 2,size.D() * 2 );
    strokeWeight(1);
    line( -size.D() / 2, 0, size.D() / 2, 0 );
    line( 0, -size.D() / 2, 0, size.D() / 2 );
    popMatrix();
  }
  
  @Override
  public void move(){
    
  }
}