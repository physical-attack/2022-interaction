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
# week03
## 3-1 myshuffle
```c++
void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
  myshuffle();
}

void myshuffle()
{
  String[] flower = {"黑桃","紅心","梅花","方塊"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}

void mousePressed()
{
  myshuffle();
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
## 3-2 52卡牌

void setup()
{
  size(800,500);
}

void draw()
{
  background(#999999);
  for(int i=0;i<52;i++)
  {
    int x=(i%13)*60;
    int y=(i/13)*120;
    rect(x,y,60,120);
  }
}
## 3-3 黑桃
```c++
void setup()
{
  size(800,500);
  PFont font = createFont("標楷體",10);
  textFont(font);
}

String[] faces = {
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K"
};

void draw()
{
  background(#999999);
  for(int i=0;i<52;i++)
  {
    int x=(i%13)*60;
    int y=(i/13)*120;
    fill(125);
    rect(x,y,60,120);
    fill(200);
    text(faces[i],x+25,y+80);
  }
}
```
## 3-4 黑紅
void setup()
{
  size(800,500);
  PFont font = createFont("標楷體",10);
  textFont(font);
}

String[] faces = {
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"
};

void draw()
{
  background(#999999);
  for(int i=0;i<52;i++)
  {
    int x=(i%13)*60;
    int y=(i/13)*120;
    fill(125);
    rect(x,y,60,120);
    if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1) fill(0);
    else fill(255,0,0);
    text(faces[i],x+25,y+80);
  }
}
## 3-5 洗牌
```c++
void setup()
{
  size(800,500);
  PFont font = createFont("標楷體",10);
  textFont(font);
}

String[] faces = {
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"
};

void draw()
{
  background(#999999);
  for(int i=0;i<52;i++)
  {
    int x=(i%13)*60;
    int y=(i/13)*120;
    fill(125);
    rect(x,y,60,120);
    if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1) fill(0);
    else fill(255,0,0);
    text(faces[i],x+25,y+80);
  }
}

void mousePressed() ///pressed按住 Dragged按住拖曳
{
  int a=int(random(52));
  int b=int(random(52));
  
  String t=faces[a];
  faces[a]=faces[b];
  faces[b]=t;
}
```
## 3-6 4卡牌(1. to 6.)
```c++
void setup()
{
  size(600,600);
  PFont font = createFont("標楷體",30);
  textFont(font);
  myshuffle();
}

String[] faces = {
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"
};

void myshuffle()
{
  for(int k=0;k<10000;k++)
  {
    int a=int(random(52));
    int b=int(random(52));
  
    String t=faces[a];
    faces[a]=faces[b];
    faces[b]=t;
  }
  face1=faces[0];
  face2=faces[1];
  face3=faces[2];
  face4=faces[3];
}

void mousePressed()
{
  myshuffle();
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
