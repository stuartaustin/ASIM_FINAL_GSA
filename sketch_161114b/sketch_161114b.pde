// Stuart Austin
// Final Project


//Stuart Austin 
//First Week progress

int angle=0;
int snakesize=5;
int time=0;
int[] headx= new int[2500];
int[] heady= new int[2500];
int applex=(round(random(47))+1)*8;
int appley=(round(random(47))+1)*8;
boolean redo=true;
boolean stopgame=false;
void setup()
{
  restart();
  size(400,400);
  textAlign(CENTER);
}
void draw()
{
  if (stopgame)
  {
    //do nothing because of game over (stop playing)
  }
  else
  {
    //draw stationary stuff
  time+=1;
  fill(255,0,0);
  stroke(0);
  rect(applex,appley,8,8);
  fill(0);
  stroke(0);
  rect(0,0,width,8);
  rect(0,height-8,width,8);
  rect(0,0,8,height);
  rect(width-8,0,8,height);
  //my modulating time by 5, we create artificial frames each 5 frames
  //(otherwise the game would go WAY too fast!)
  if ((time % 5)==0)
  {
    travel();
    display();
    checkdead();
  }
  }
}

//controls 