void setup()
{
  size(600,600);
}

float x=300,y=300;
float vx=1.0,vy=-0.5;

void draw()
{
  ellipse(x,y,20,20);
  x+=vx;
  y+=vy;
  if(x>600|x<0)vx=-vx;
  if(y<0|y>600)vy=-vy;
}
