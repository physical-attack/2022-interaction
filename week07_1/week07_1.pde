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
  if(moving)
  {
    drawchess(50+25+movej*50,50+25+movei*50,9);
  }
}

int movei=-1,movej=-1;
boolean moving=false;///no movement

void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
        
        else
        {
          movei=i; ///the moving chess i、j coordinates
          movej=j;
          moving=true;///now moving
        }
      }
    }
  }
}

void drawchess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id==9)
  {
    fill(0,255,0);
    ellipse(x,y,40,40);
  }
  else if(id>0)
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
