class Gearwheel extends Circle{
  
  public Gearwheel(float x, float y, float a, float d){
    super( x, y, a, d );
  }

  @Override
  public void turn(){
    super.turn();
    a -= (( b.a - b.la ) * b.d ) / d;
    // rotation by arc length of boss in the opposite direction
    super.turnRest();
  }
  
  @Override
  public void addSlave(Element el ){
    super.addSlave( el );
    if ( b.d + d != bd )
      println( "Gearwheel distans is not proper : " + ( bd - d - b.d ) );
  }
  

  @Override
  public void draw(){
    pushMatrix();
    stroke(128);
    strokeWeight(10);
    fill(32);
    translate(x, y);
    rotate(a);
    ellipse(0, 0, d * 2, d * 2 );
    strokeWeight(1);
    line( -d / 2, 0, d / 2, 0 );
    line( 0, -d / 2, 0, d / 2 );
    popMatrix();
  }


}