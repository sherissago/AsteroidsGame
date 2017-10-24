Spaceship bob;

public void setup() 
{
  size(900,600);
  bob = new Spaceship();


}
public void draw() 
{
  background(186,206,219);
  bob.show();
  bob.move();
}

public void keyPressed()
{
  //hyperspace
  if(key == 32)
  {
    bob.myCenterX = Math.random()*900;
    bob.myCenterY = Math.random()*600;
  }   
}
