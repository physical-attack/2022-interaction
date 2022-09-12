void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
  String[] flower = {"黑桃","紅心","梅花","方塊"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}
int w=25;
String face1,face2,face3,face4;
void draw()
{
  drawcard(100,100,face1);
  drawcard(160,160,face2);
  drawcard(220,220,face3);
  drawcard(280,280,face4);
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
