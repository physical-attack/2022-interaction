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
## 2-1 外圓內圓
```c++
size(600,600);

rect(200,200,200,300,50);///弧度

fill(#654321);


rect(225,225,150,250,50);
```
## 2-2 multiple
```c++
void setup()

{

  size(600,600);

}

int w=25;

void draw()

{

  drawcard(120,120);

  drawcard(150,150);

  drawcard(180,180);

}

void drawcard(int x,int y)

{

  fill(255);

  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度

  fill(#654321);

  rect(x,y,150,250,50);


}
```
## 2-3 S H C D
```c++
void setup()
{
  size(600,600);
}
int w=25;
void draw()
{
  drawcard(100,100,"S1");
  drawcard(150,150,"H2");
  drawcard(200,200,"C3");
  drawcard(250,250,"D4");
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  fill(10);
  textSize(30);
  text(face,x+10,y+40);
}
```
## 2-4 黑桃 梅花 方塊 紅心
```c++
void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
}
int w=25;
void draw()
{
  drawcard(100,100,"黑桃1");
  drawcard(160,160,"紅心2");
  drawcard(220,220,"梅花3");
  drawcard(280,280,"方塊4");
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  fill(10);
  textSize(30);
  text(face,x+10,y+40);
}
```
## 2-5 紅黑
```c++
void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
}
int w=25;
void draw()
{
  drawcard(100,100,"黑桃1");
  drawcard(160,160,"紅心2");
  drawcard(220,220,"梅花3");
  drawcard(280,280,"方塊4");
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  if(face.indexOf("黑桃")== -1 && face.indexOf("梅花")== -1) fill(#ff0000); 
  else fill(0);
  textSize(30);
  text(face,x+10,y+40);
}

```
## 2-6 randomize?
```c++
void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
  String[] flower = {"黑桃","紅心","梅花","方塊"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}                                                        ///(0-12)+1
int w=25;
String face1,face2,face3,face4;
void draw()
{
  drawcard(100,100,face1);
  drawcard(160,160,face2);
  drawcard(220,220,face3);
  drawcard(280,280,face4);
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  if(face.indexOf("黑桃")== -1 && face.indexOf("梅花")== -1) fill(#ff0000); 
  else fill(0);
  textSize(30);
  text(face,x+10,y+40);
}
```
## 2-7 mousepressed
```c++
void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
  String[] flower = {"黑桃","紅心","梅花","方塊"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}
void mousePressed()
{
  String[] flower = {"黑桃","紅心","梅花","方塊"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}
int w=25;
String face1,face2,face3,face4;
void draw()
{
  drawcard(100,100,face1);
  drawcard(160,160,face2);
  drawcard(220,220,face3);
  drawcard(280,280,face4);
}
void drawcard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,50);///弧度
  fill(#654321);
  rect(x,y,150,250,50);
  if(face.indexOf("黑桃")== -1 && face.indexOf("梅花")== -1) fill(#ff0000); 
  else fill(0);
  textSize(30);
  text(face,x+10,y+40);
}
```
