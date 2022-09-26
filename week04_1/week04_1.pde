void setup()
{
  size(600,600);
}

int x=300,y=300;

void draw()
{
  ellipse(x,y,5,5);
  x+=1;
  y-=1;
}
