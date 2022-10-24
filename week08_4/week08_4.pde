class FRUIT///class物件:物件生成每個水果(值、函式)
{
  float x,y,vx,vy;
  boolean fly;
  PApplet sketch;///使random 可使用的修改
  FRUIT(PApplet _sketch)///建構子:the first thing to do
  {
    sketch= _sketch;///使random 可使用的修改
    reset();
  }
  
  void reset()
  {
    x=sketch.random(100.0,300.0);///使random 可使用的修改
    y=300;
    vx=sketch.random(-2,2);///使random 可使用的修改
    vy=-13;
    fly=true;
  }
  
  void update()
  {
    x+=vx;
    y+=vy;
    vy+=0.98/3;
  }
}

FRUIT fruit;
void setup()
{
  size(400,300);
  fruit =new FRUIT(this);///使random 可使用的修改
}

void draw()
{
  background(255,0,255);
  ellipse(fruit.x,fruit.y,50,50);
  fruit.update();
}

void mousePressed()
{
  fruit.reset();
}
