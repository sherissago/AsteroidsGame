Spaceship bob = new Spaceship();

public void setup() 
{
  size(900,600);
}
public void draw() 
{
  background(186,206,219);
  bob.setDirectionX(0);
  bob.setDirectionY(0);
  bob.show();
  bob.move();
}

public void keyTyped()
{
  }
  //hyperspace
  if(key == 32)
  {
    bob.setX((int)(Math.random()*900));
    bob.setY((int)(Math.random()*600));
  }   
  if(key == 'q')
  {
    bob.accelerate(30);
  }
  if(key == 'z')
  {
    bob.turn(-15);
  }
  if(key == 'v')
  {
    bob.turn(15);
  }
}

