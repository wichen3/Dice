void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(190);
	for (int y = 50;y < 450; y = y + 55) 
	{	
		for (int x = 50; x < 450; x = x + 55) 
		{
			Die theDice = new Die(x,y);
			theDice.show();
		}
	}
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
		noStroke();
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
