void setup()
{
  size(400,300);
}

float fruitx=200,fruity=150;/// fruit coordinate
float fruitvx=1,fruitvy=-1;///fruit speed vx vy
boolean fly=true;///boolean - 成立不成立

void draw()
{
  background(255,0,255);
  ellipse(fruitx,fruity,50,50);
  if(fly)
  {
    fruitx+=fruitvx;
    fruity+=fruitvy;
  }
}

void mousePressed()
{
  fly=false;
}
