abstract class Element{
  // Position -> pos x,y as vector
  // Size -> size a,d ad vector
  Vector pos, size;
  // Driving element (boss)
  Element boss;
  // Subordinate elements
  ArrayList<Element> slaves;
  
  public Element(float x, float y, float a, float d){
    pos = new Vector(x, y);
    size = new Vector();
    size.setAD( a, d );
    slaves = new ArrayList<Element>();
  }
  
  public abstract void draw();
  
  public abstract void move();

  public void addBoss(Element b){
    boss = b;
  }
    
  public void addDepend(Element s){
    slaves.add(s);
  }
  
  

  
}