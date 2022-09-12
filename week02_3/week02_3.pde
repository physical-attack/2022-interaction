void setup()
{
  size(600,600);
}
int w=25;
void draw()
{
  drawcard(100,100,"S1");
  drawcard(150,150,"H2");
  drawcard(200,200,"C3");
  drawcard(250,250,"D4");
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  fill(10);
  textSize(30);
  text(face,x+10,y+40);
}
