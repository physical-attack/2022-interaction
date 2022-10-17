///save, mp3 drag here
///ctrl+k to view file

/*import processing.sound.*;///music function

void setup()
{
  Sound s = new Sound(this);
}
void draw()
{
  
}
void mousePressed()
{
  
}*/

import processing.sound.*;///music function

void setup()
{
  SoundFile file = new SoundFile(this,"In Game Music.mp3");
  file.play();
}
void draw()
{
  
}
void mousePressed()
{
  SoundFile file2 = new SoundFile(this,"Freezing.mp3");
  file2.play();
}
void keyPressed()
{
  
}
