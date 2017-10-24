class Stars //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  
  public Stars()
  {
    myX = (int)Math.random()*900;
    myY = (int)Math.random()*500;
    myColor = (255);
  }
  
  public void show()
  {
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
}
