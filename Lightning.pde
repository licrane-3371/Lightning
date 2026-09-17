int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int resetButton = 0;
int resetLimit = ((int)Math.random()*10)+5;
void setup()
{
  size(300,300);
  background(0,0,0);
  strokeWeight(2);
}
void draw()
{
  stroke((int)(Math.random()*255), (int)(Math.random()*255),(int)(Math.random()*255));
  while(endY<300){
    endX = startX + ((int)(Math.random()*18)-9);
    endY = startY + ((int)(Math.random()*10));
    stroke((int)(Math.random()*255), (int)(Math.random()*255),(int)(Math.random()*255));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    fill(255,255,255);
    noStroke();
    
  }
}
void mousePressed()
{
  startX = 150;
  startY = 20;
  endX = (int)Math.random()*300;
  endY = (int)Math.random()*300;
  resetButton += 1;
  if (resetButton > resetLimit){
    resetLimit = ((int)Math.random()*10)+5;
    fill(0,0,0);
    square(0,0,300);
    resetButton = 0;
  }
  
}
