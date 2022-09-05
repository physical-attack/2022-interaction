void setup()
{
  size(500,500);
  background(#556423);
  stroke(0,125,136);///筆觸
}
void draw()
{
  if(mousePressed)
  {
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
void keyPressed()
{
  if(key=='1') stroke(#511111);
  if(key=='2') stroke(#226222);
  if(key=='3') stroke(#338333);
}
