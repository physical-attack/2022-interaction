import processing.sound.*;
SoundFile sound1,s2,s3;

void setup()
{
  size(400,300);
  textSize(50);
  fill(0,255,0);
  sound1=new SoundFile(this,"Gong.mp3");
  s2=new SoundFile(this,"Freezing.mp3");
  sound1.play();
}

int stage=1;

void draw()
{
  background(255);
  if(stage==1)
  {
    text("stage 1",150,150);
  }
  else if(stage==2)
  {
    text("stage 2",150,150);
  }
}

void mousePressed()
{
  if(stage==1)
  {
    stage=2;
    sound1.stop();
    s2.play();
  }
  else if(stage==2)
  {
    stage=1;
    s2.stop();
    sound1.play();
  }
}
