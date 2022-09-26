void setup()
{
  size(600,600);
}

float x=300,y=300;
float vx=3.0,vy=-2.5;
float boardx,boardy=570,boardw=250,boardh=20;

void draw()
{
  background(#FFFFF2);
  int boardx=mouseX;
  rect(boardx,boardy,boardw,boardh);
  ellipse(x,y,20,20);
  x+=vx;
  y+=vy;
  if(x>600|x<0)vx=-vx;
  if(y<0)vy=-vy;
  if((y>boardy && y<boardy+boardh)&& 
  (x>boardx && x<boardx+boardw))
  {
    vy=-vy;
    vx+=(mouseX-pmouseX)/2;
  }
  
  if(mousePressed && mouseButton ==LEFT)boardw*=1.01;
  if(mousePressed && mouseButton ==RIGHT)boardw*=0.99;
}
