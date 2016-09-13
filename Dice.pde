void setup()
{
  size(500, 500);
  noLoop();
}
void duckbody()
{
  stroke(0, 0, 0);
  ellipse(225, 285, 50, 20);
  ellipse(265, 285, 50, 20);
  fill(255, 155, 0);
  rect(220, 195.0 , 15, 80);
  rect(260, 195.9, 15, 80);
  fill(0, 0, 0);  
  arc(254, 160, 170, 180, 0, PI);
  rect(170, 100, 80, 80);
  arc(210, 100, 80, 80, PI, 2*PI);
}
void wing()
{
  fill(0, 0, 0);
  beginShape();
  curveVertex(250, 160);
  curveVertex(250, 160);
  curveVertex(338, 130);
  curveVertex(338, 160);
  curveVertex(338, 160);
  endShape();
}
void eye()
{
  fill(255, 255, 255);
  ellipse(200, 100, 35, 35);
}
void bill()
{
  stroke(0, 0, 0);
  fill(255, 150, 0);
  ellipse(180, 135, 80, 40);
}
void draw()
{
  background(0);
  int diceTotal = 0;
  for (int y = 30;y < 350; y = y + 55) 
  { 
    for (int x = 75; x < 375; x = x + 55) 
    {
      Die theDice = new Die(x,y);
      theDice.show();
      if (theDice.value == 1) 
      {
        diceTotal = diceTotal + 1;
      }
      if (theDice.value == 2) 
      {
        diceTotal = diceTotal + 2;
      }
      if (theDice.value == 3) 
      {
        diceTotal = diceTotal + 3;
      }
      if (theDice.value == 4) 
      {
        diceTotal = diceTotal + 4;
      }
      if (theDice.value == 5) 
      {
        diceTotal = diceTotal + 5;
      }
      if (theDice.value == 6) 
      {
        diceTotal = diceTotal + 6;
      }
    }
  }
  if (diceTotal > 145) 
  {
    background(192);
    fill((int)(Math.random() * 256) + 40,(int)(Math.random() * 256) + 40,(int)(Math.random() * 256) + 40 );
    bill();
    duckbody();
    wing();
    eye();
    fill(0,180,0);
    text("YOU WIN!!!", 250, 400);
  }
  textSize(30);
  fill(255);
  text("Total:" + diceTotal  , 75, 400);
  System.out.println(diceTotal);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, value;
  Die(int x, int y)
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    value = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    stroke(0);
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (value == 1) 
    {
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if (value == 2) 
    {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);      
    }
    if (value == 3) 
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if(value == 4)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if(value == 5)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if(value == 6)
    {
      ellipse(myX + 15, myY + 10, 10, 10);
      ellipse(myX + 35, myY + 10, 10, 10);
      ellipse(myX + 15, myY + 40, 10, 10);
      ellipse(myX + 35, myY + 40, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
    }
  }
}