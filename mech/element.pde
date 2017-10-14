abstract class Element{
  // Position x,y and angle and distance
  // Vector to boss and last movment
  public float x, y, a, d, ba, bd, la, ld;
  // Driving element (boss)
  Element b;
  // Subordinate elements
  ArrayList<Element> e;

  
  public Element(float x, float y, float a, float d){
    this.x = x;
    this.y = y;
    this.a = a;
    this.d = d;
    e = new ArrayList<Element>();
  }
  
  public void addSlave(Element el ){
    el.setDepend( atan2(el.y - y, el.x - x), dist(x, y, el.x, el.y) );
    el.addBoss(this);
    e.add(el);
  }
  
  public void addBoss(Element b){
    this.b = b;
  }
    
  public void setDepend( float ang, float dis){
    ba = ang;
    bd = dis;
  }
    
  public abstract void draw();
  
  public void turn(){
    la = a;
    ld = d;
  }
  
  public void turnRest(){
    if ( ! e.isEmpty() ){
      for( Element i : e ){
        i.turn( );
      }
    }
  }
  
}