Spaceship bob = new Spaceship();
Bullet bobbie = new Bullet(bob);
//Asteroid [] belt = new Asteroid[10];
Stars[] sky = new Stars[500];
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
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
  
 for (int i = 0; i < 5; i++)
 {
   belt.add(new Asteroid());
 }
 
  
}
public void draw() 
{
  background(106,94,135);
  for (int i = 0; i < sky.length; i++) //show stars
  {
    sky[i].show();
  }
  
  
 for (int i = 0; i < belt.size(); i++)
 {
   belt.get(i).show();
   belt.get(i).move();
   
   if (dist(bob.getX(), bob.getY(), belt.get(i).getX(),belt.get(i).getY()) < 30)
   {
     belt.remove(i);
   }
 }
 
 if(belt.size() <7)
 {
   belt.add(new Asteroid());
 }
  
  bob.show();
  bob.move();
  bobbie.show();
  bobbie.move();
  
}

public void keyTyped()
{
  //hyperspace
  if(key == 32)
  {
    bob.setX((int)(Math.random()*900));
    bob.setY((int)(Math.random()*600));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }   
  //other movements
  else if(key == 'd'){bob.accelerate(1);}
  else if(key == 'z'){bob.turn(-15);}
  else if(key == 'v'){bob.turn(15);}
  else if(key == 'q'){pew.add(new Bullet(bob));}
}

