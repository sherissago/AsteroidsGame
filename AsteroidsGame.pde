Spaceship bob = new Spaceship(450,300);
//Asteroid [] belt = new Asteroid[10];
Stars[] sky = new Stars[500];

public void setup() 
{
  size(900,600);
  for (int i = 0; i < sky.length; i++)//make stars
  {
    sky[i] = new Stars();
  }
  
 /* for (int i = 0; i < belt.length; i++)
  {
    belt[i] = new Asteroid((int)(Math.random()*900),(int)(Math.random()*30));
    belt[i].setX((int)(Math.random()*900));
    belt[i].setY((int)(Math.random()*600));  
  } */
  
  
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
  /*for(int i = 0; i < belt.length; i++)
  {
   belt[i].show();
   belt[i].move();
  }*/
  
  bob.show();
  bob.move();
  bob.setDirectionX(0);
  bob.setDirectionY(0);
  
  ArrayList<Asteroid> belt = new ArrayList<Asteroid>();
  for (int i = 0; i < 10; i++)
  {
    belt.add(new Asteroid((int)(Math.random()*900),(int)(Math.random()*30)));
  }
   for(int i = 0; i < 10; i++)
  {
    Asteroid allAsteroids = belt.get(i);
    allAsteroids.move();
    allAsteroids.show();
  }
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
  else if(key == 'd'){bob.accelerate(10);}
  else if(key == 'z'){bob.turn(-15);}
  else if(key == 'v'){bob.turn(15);}
}
