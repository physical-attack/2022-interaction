void setup()
{
  size(400,300);
}

float fruitx=200,fruity=300;/// fruit coordinate
float fruitvx=2,fruitvy=-13;///fruit speed vx vy
boolean fly=true;///boolean - 成立不成立

void draw()
{
  background(255,0,255);
  ellipse(fruitx,fruity,50,50);
  if(fly)
  {
    fruitx+=fruitvx;
    fruity+=fruitvy;
    fruitvy+= 0.98/3;///gravity+speed
  }
}

void mousePressed()
{
  fly=false;
  reset();
}

void reset()
{
  fruitx=random(100,300);
  fruity=300;
  fruitvx=random(-2,2);
  fruitvy=-13;
  fly=true;
}
