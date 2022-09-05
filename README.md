# 2022-interaction
2022 互動
## 1-1 mouseX,mouseY,setup,draw
```c++
void setup()
{
  size(500,500);
}
void draw()
{
  background(#A3B2C1);
  fill(#C3B2A1);
  rect(100,100,300,300);
  fill(#538251);
  rect(mouseX,mouseY,100,100);
}
```
## 1-2 p5js
```c++
function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xA3, 0xB2, 0xC1));
    fill(color(0xC3, 0xB2, 0xA1));
    rect(100, 100, 300, 300);
    fill(color(0x53, 0x82, 0x51));
    rect(mouseX, mouseY, 100, 100);
}

function initializeFields() {
}
```
## 1-3 multipainter
```c++
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
```
