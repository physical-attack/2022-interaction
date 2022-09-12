void setup()
{
  size(600,600);
}
int w=25;
void draw()
{
  drawcard(120,120);
  drawcard(150,150);
  drawcard(180,180);
}
void drawcard(int x,int y)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
}
