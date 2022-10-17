# 2022-interaction
2022 互動
# week01
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
# week02
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
# week04
## 4-1 圓圈=>直線
```c++
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
```
## 4-2 反彈
```c++
void setup()
{
  size(600,600);
}

float x=300,y=300;
float vx=1.0,vy=-0.5;

void draw()
{
  ellipse(x,y,20,20);
  x+=vx;
  y+=vy;
  if(x>600|x<0)vx=-vx;
  if(y<0|y>600)vy=-vy;
}
```
## 4-3 板子反彈
```c++
void setup()
{
  size(600,600);
}

float x=300,y=300;
float vx=3.0,vy=-2.5;

void draw()
{
  background(#FFFFF2);
  int boardx=mouseX;
  rect(boardx,570,250,20);
  ellipse(x,y,20,20);
  x+=vx;
  y+=vy;
  if(x>600|x<0)vx=-vx;
  if(y<0)vy=-vy;
  if(y>570 && x>boardx && x<boardx+250) vy=-vy;
}
```
## 4-4 板子長短+反彈軌道
```c++
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
```
## 4-5 棋盤
```c++
void setup()
{
  size(600,600);
}

void draw()
{
  for(int x=100;x<=500;x+=50)
  {
    for(int y=100;y<=500;y+=50)
    {
      ellipse(x,y,50,50);
    }
  }
}
```
## 4-6 黑白棋盤
```c++
void setup()
{
  size(600,600);
}

int [][] go={
  {0,0,0,0,0,0,0,0,1},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,1,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,1,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};

void draw()
{
  for(int i=0;i<9;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1) fill(0);
      else fill(255);
      ellipse(100+j*50,100+i*50,50,50);
    }
  }
}
```
## 4-7 正常棋盤
```c++
void setup()
{
  size(600,600);
}

int [][] go={
  {0,0,0,0,0,0,0,0,1},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,1,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,2,0,1,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,2,0,0,0,0,0,0,0}
};

void draw()
{
  background(246,194,108);
  for(int i=1;i<=9;i++)
  {
    line(50,50*i,450,50*i);
    line(50*i,50,50*i,450);
  }
  for(int i=0;i<9;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1)
      {
        fill(0);
        ellipse(50+j*50,100+i*50,40,40);
      }
      else if(go[i][j]==2)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
      }
    }
  }
}
```
## 4-8 1黑2白
```c++
void setup()
{
  size(600,600);
}

int [][] go={
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};

int n=0;

void mousePressed()
{
  int j=(mouseX-25)/50;
  int i=(mouseY-25)/50;
  go[i][j]=(n%2==0)?1:2;
  n++;
}

void draw()
{
  background(246,194,108);

  for(int i=1;i<=9;i++)
  {
    line(50,50*i,450,50*i);
    line(50*i,50,50*i,450);
  }
  for(int i=0;i<9;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1)
      {
        fill(0);
        ellipse(50+j*50,100+i*50,40,40);
      }
      else if(go[i][j]==2)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
      }
    }
  }
}
```
# week05
## 5-1 棋盤
```c++
size(500,700);

for(int x=50;x<=450;x+=50)
{
  line(x,50,x,500);
}

for(int y=50;y<=500;y+=50)
{
  line(50,y,450,y);
}
```
## 5-2 分界及數字
```c++
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,0,0},
  {1,0,1,0,1,0,1,0,1}
};

void setup()
{
  size(500,700);
}
void draw()
{
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<9;j++)
    {
      text(board[i][j],50+j*50,50+i*50);
    }
  }
}
```
## 5-3 "將","士","象","車","馬","包","卒"
```c++
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,0,0},
  {7,0,7,0,7,0,7,0,7}
};

String [] name={"將","士","象","車","馬","包","卒"};

void setup()
{
  size(500,700);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];
      if(id==0) continue;
      text(name[id-1],50+j*50,50+i*50);
    }
  }
}
```
## 5-4 黑紅棋
```c++
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};

String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};

void setup()
{
  size(500,700);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];
      if(id==0) continue;
      if(id>0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(0);
        text(name[id-1],50+j*50,50+i*50-3);
      }
      else if(id<0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50-3);
      }
    }
  }
}
```
## 5-5 multi"將"
```c++
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};

String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};

void setup()
{
  size(500,700);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];
      if(id==0) continue;
      if(id>0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(0);
        text(name[id-1],50+j*50,50+i*50-3);
      }
      else if(id<0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50-3);
      }
    }
  }
}
void mousePressed()
{
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(dist(mouseX,mouseY,50+j*50,50+i*50)<20)
      {
        board[i][j]=1;
      }
    }
  }
}
```
## 5-6 移動
```c++
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};

String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};

void setup()
{
  size(500,700);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  background(#564218);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];
      if(id==0) continue;
      if(id>0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(0);
        text(name[id-1],50+j*50,50+i*50-3);
      }
      else if(id<0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50-3);
      }
    }
  }
  if(handchess!=0) ellipse(mouseX,mouseY,40,40);
}
int handchess=0;
void mousePressed()
{
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(dist(mouseX,mouseY,50+j*50,50+i*50)<20)
      {
        handchess=board[i][j];
        board[i][j]=0;///消失
      }
    }
  }
}
void mouseReleased()
{
  int i=(mouseY+25-50)/50;///4捨5入
  int j=(mouseX+25-50)/50;
  board[i][j]=handchess;
  handchess=0;
}
```
## 5-7 暗棋
```c++
int [][]board={
  {1,2,2,3,3,4,4,5},
  {5,6,6,7,7,7,7,7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};

String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};

void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  background(#564218);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      int id=board[i][j];
      drawchess(50+25+j*50,50+25+i*50,id);
    }
  }
}
void drawchess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name2[id-1],x,y-3);
  }
  else
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```
## 5-8 翻棋
```c++
int [][]show={
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board={
  {1,2,2,3,3,4,4,5},
  {5,6,6,7,7,7,7,7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};

String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};

void setup()
{
  size(500,300);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  background(#564218);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if (show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawchess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
}

void mousePressed()
{
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
      }
    }
  }
}

void drawchess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name2[id-1],x,y-3);
  }
  else
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```
# week07
## 1-1 04fu6

‵++int [][]show={
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};

int [][]board={
  {1,2,2,3,3,4,4,5},
  {5,6,6,7,7,7,7,7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};

String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};

void setup()
{
  size(500,300);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  
  for(int k=0;k<1000;k++)
  {
    int a1=int(random(4)),a2=int(random(8));
    int b1=int(random(4)),b2=int(random(8));
    
    int t=board[a1][a2];
    board[a1][a2]=board[b1][b2];
    board[b1][b2]=t;
  }
}
void draw()
{
  background(#564218);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }

  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if (show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawchess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
}

void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
      }
    }
  }
}

void drawchess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
