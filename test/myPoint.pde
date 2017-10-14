class myPoint{
  float x, y;
  
  public myPoint(float x, float y){
   this.x = x;
   this.y = y;
  }
  
  public void draw(){
    pushMatrix();
    translate(x, y);
    stroke(255, 0, 0);
    noFill();
    ellipse( 0, 0, 4, 4);
    popMatrix();
  }
  
}