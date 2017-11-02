Spaceship bob = new Spaceship(450,300);
Stars[] sky = new Stars[500];

public void setup() 
{
  size(900,600);
  for (int i = 0; i < sky.length; i++)//make stars
  {
    sky[i] = new Stars();
  }
  bob.setDirectionX(450);
  bob.setDirectionY(300);
}
public void draw() 
{
  background(106,94,135);
  for (int i = 0; i < sky.length; i++) //show stars
  {
    sky[i].show();
  }
  bob.show();
  bob.move();
  bob.setDirectionX(0);
  bob.setDirectionY(0);
}

public void keyTyped()
{
  //hyperspace
  if(key == 32)
  {
    bob.setX((int)(Math.random()*900));
    bob.setY((int)(Math.random()*600));
  }   
  //other movements
  else if(key == 'd'){bob.accelerate(1);}
  else if(key == 'z'){bob.turn(-15);}
  else if(key == 'v'){bob.turn(15);}
}
