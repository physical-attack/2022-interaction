void setup()
{
  size(600,600);
}

float x=300,y=300;
float vx=3.0,vy=-2.5;

void draw()
{
  background(#FFFFF2);
  int boardx=mouseX;
  rect(boardx,570,250,20);
  ellipse(x,y,20,20);
  x+=vx;
  y+=vy;
  if(x>600|x<0)vx=-vx;
  if(y<0)vy=-vy;
  if(y>570 && x>boardx && x<boardx+250) vy=-vy;
}
