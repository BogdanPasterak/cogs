class Pulley extends Circle{
  
  PVector v1, v2, v3, v4;
  
  public Pulley(float x, float y, float a, float d){
    super( x, y, a, d );
  }

  @Override
  public void addSlave(Element el ){
    super.addSlave( el );
  }
  
  @Override
  public void addBoss(Element b){
    super.addBoss( b );
    float rr = d - b.d;
    float beta = acos(rr / bd);
    float a1 = ba + PI - beta, a2 = ba + PI + beta;
    float cosA1 = cos(a1), sinA1 = sin(a1);
    float cosA2 = cos(a2), sinA2 = sin(a2);
    v1 = new PVector( b.x + cosA1 * b.d, b.y + sinA1 * b.d );
    v2 = new PVector( x + cosA1 * d, y + sinA1 * d );
    v3 = new PVector( b.x + cosA2 * b.d, b.y + sinA2 * b.d );
    v4 = new PVector( x + cosA2 * d, y + sinA2 * d );
     //<>//
    //println("D = " + bd + "   Alpha = " + ba + "   rr = " + rr );
    
  }
    
  
  @Override
  public void turn(){
    super.turn();
    a += (( b.a - b.la ) * b.d ) / d;
    // rotation by arc length of boss in the same direction
    super.turnRest();
  }
  
  @Override
  public void draw(){
    pushMatrix();
    stroke(128);
    strokeWeight(10);
    fill(64);
    translate(x, y);
    rotate(a);
    ellipse(0, 0, d * 2, d * 2 );
    strokeWeight(1);
    line( -d / 2, 0, d / 2, 0 );
    line( 0, -d / 2, 0, d / 2 );
    popMatrix();
    stroke(160);
    strokeWeight(5);
    line( v1.x, v1.y, v2.x, v2.y );
    line( v3.x, v3.y, v4.x, v4.y );
  }

}