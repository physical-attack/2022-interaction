String line="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
class FRUIT
{
  float x,y,vx,vy;
  boolean fly;
  char c;
  PApplet sketch;
  FRUIT(PApplet _sketch)
  {
    sketch= _sketch;
    reset();
  }
  
  void reset()
  {
    x=sketch.random(100.0,300.0);///使random 可使用的修改
    y=300;
    vx=sketch.random(-2,2);///使random 可使用的修改
    vy=-13;
    fly=true;
    int i=int(random(26));
    c=line.charAt(i);
  }
  
  void update()
  {
    x+=vx;
    y+=vy;
    vy+=0.98/3;
  }
}
