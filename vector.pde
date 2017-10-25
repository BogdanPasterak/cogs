// Enrichment class PVector by magnitude (d) and heading (a)
class Vector{
  private PVector v;
  private float a, d;
  
  public Vector (){
    v = new PVector();
    a = 0.0f;
    d = 0.0f;
  }
  public Vector( float x, float y ){
    v = new PVector( x, y );
    setAD();
  }
  
  public void X(float x){
    v.x = x;
    setAD();
  }
  public float X(){
    return v.x;
  }
  
  public void Y(float y){
    v.y = y;
    setAD();
  }
  public float Y(){
    return v.y;
  }
  
  public float D(){
    return d;
  }
  public void D(float d){
    this.d = d;
    setXY();
  }
  
  public float A(){
    return a;
  }
  public void A(float a){
    this.a = a;
    setXY();
  }
  
  public void setAD( float a, float d ){
    this.a = a;
    this.d = d;
    setXY();
  }
  
  public void setXY( float x, float y ){
    v.x = x;
    v.y = y;
    setAD();
  }

  private void setAD(){
    a = v.heading();
    d = v.mag();
  }
  
  private void setXY(){
    v.x = cos(a) * d;
    v.y = sin(a) * d;
  }
}