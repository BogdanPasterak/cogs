class Ways extends Bearing{
  
  public Ways( float x, float y ){
    super( x, y );
    a = -0.5;
    d = 23;
  }
   
  @Override
  public void draw(){
    stroke(190);
    strokeWeight(4);
    fill(0);
    line(x + cos(a + PI / 4) * d, y + sin(a + PI / 4) * d,
        x + cos(a + PI / 4 * 3) * d, y + sin(a + PI / 4 * 3) * d );
    line(x + cos(a + PI / 4 * 5) * d, y + sin(a + PI / 4 * 5) * d,
        x + cos(a + PI / 4 * 7) * d, y + sin(a + PI / 4 * 7) * d );
  }
  
}