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

public void keyTyped()
{
  //hyperspace
  if(key == 32)
  {
    bob.setX((int)Math.random()*900);
    bob.setY((int)Math.random()*600);
    bob.getX(); 
    bob.getY();
  }   
  if(key == 37)
  {
   // bob.setDirectionX();
    bob.getDirectionX();
  }
  else if(key == 39)
  {
   // bob.setDirectionX();
    bob.getDirectionX();
  }
    else if(key == 38)
  {
   // bob.setDirectionY();
    bob.getDirectionY();
  }
  else if(key == 40)
  {
   // bob.setDirectionY();
    bob.getDirectionY();
  }
}
