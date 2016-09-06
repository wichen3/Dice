void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(190);
	for (int x = 50; x < 450; x = x + 60) 
	{
		Die theDice = new Die(x,250);
		theDice.show();
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
		text("" + value, myX,myY);
	}
}
