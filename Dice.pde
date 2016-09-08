void setup()
{
	size(400, 450);
	noLoop();
}
void draw()
{
	background(0);
	int diceTotal = 0;
	for (int y = 30;y < 350; y = y + 55) 
	{	
		for (int x = 35; x < 350; x = x + 55) 
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
	textSize(30);
	fill(255);
	text("Total:" + diceTotal  , 35, 400);
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
