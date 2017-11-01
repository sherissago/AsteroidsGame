class Stars //note that this class does NOT extend Floater
{
private int myX,myY,myColor;

Stars()
{
  myX = (int)(Math.random()*900);
  myY = (int)(Math.random()*600);
  myColor = (255);
}

public void show()
{
  noStroke();
  fill(myColor);
  ellipse(myX,myY,2,2);
}
}
