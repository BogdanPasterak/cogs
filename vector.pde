// Enrichment class PVector by magnitude (d) and heading (a)
class Vector extends PVector{
  PVector v;
  
  public Vector (){
    v = new PVector();
  }
  
  public void X(float x){
    v.x = x;
  }
  public float X(){
    return v.x;
  }
  
  public void Y(float y){
    v.y = y;
  }
  public float Y(){
    return v.y;
  }
  
}