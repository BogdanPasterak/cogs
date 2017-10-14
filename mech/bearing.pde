class Bearing extends Element{
  
  public Bearing( float x, float y ){
    super( x, y, 0.0, 0.0 );
  }
  
  @Override
  public void turn(){
    la = x; //<>//
    ld = y;
    if ( b instanceof Circle ){
      ba += b.a - b.la;
      x = b.x + cos(ba) * bd;
      y = b.y + sin(ba) * bd;
    }
    super.turnRest();
  }
    
  @Override
  public void draw(){
    stroke(190);
    strokeWeight(4);
    fill(0);
    ellipse(x, y, 10, 10 );
  }
  
  
}