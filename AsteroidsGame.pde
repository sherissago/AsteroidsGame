Spaceship bob = new Spaceship();
Stars[] sky = new Stars[500];

public void setup() 
{
  size(900,600);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Stars();
  }
  
}
public void draw() 
{
  background(106,94,135);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  
  bob.setDirectionX(0);
  bob.setDirectionY(0);
  bob.show();
  bob.move();
}

public void keyTyped()
{
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

