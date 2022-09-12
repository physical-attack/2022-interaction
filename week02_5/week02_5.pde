void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
}
int w=25;
void draw()
{
  drawcard(100,100,"黑桃1");
  drawcard(160,160,"紅心2");
  drawcard(220,220,"梅花3");
  drawcard(280,280,"方塊4");
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  if(face.indexOf("黑桃")== -1 && face.indexOf("梅花")== -1) fill(#ff0000); 
  else fill(0);
  textSize(30);
  text(face,x+10,y+40);
}
