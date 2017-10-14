class Circle extends Element{
  
  public Circle(float x, float y, float a, float d){
    super( x, y, a, d );
  }
  
  @Override
  public void turn(){
    super.turn();
    if ( b == null ){
      a += PI / 100;
    }
    super.turnRest();
  }
  
  @Override
  public void addSlave(Element el ){
    super.addSlave( el );
  }
  
  @Override
  public void draw(){
    pushMatrix();
    stroke(128);
    strokeWeight(10);
    fill(0);
    translate(x, y);
    rotate(a);
    ellipse(0, 0, d * 2, d * 2 );
    strokeWeight(1);
    line( -d / 2, 0, d / 2, 0 );
    line( 0, -d / 2, 0, d / 2 );
    popMatrix();
  }
}