 class Asteroid extends Floater
{
  public int mySpeed;
  public Asteroid(int x, int y)
    {
      mySpeed = (int)(Math.random()* 4)-2;
      myColor = color(13,230,230);
      corners = 13;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 0;
      yCorners[0] = 20;
      xCorners[1] = 6;
      yCorners[1] = 10;
      xCorners[2] = 20;
      yCorners[2] = 13;
      xCorners[3] = 15;
      yCorners[3] = 0;
      xCorners[4] = 20;
      yCorners[4] = -13;
      xCorners[5] = 6;
      yCorners[5] = -10;
      xCorners[6] = 0;
      yCorners[6] = -20;
      xCorners[7] = -6;
      yCorners[7] = -10;
      xCorners[8] = -20;
      yCorners[8] = -13;
      xCorners[9] = -15;
      yCorners[9] = 0;
      xCorners[10] = -20;
      yCorners[10] = 13;
      xCorners[11] = -6;
      yCorners[11] = 10;
      xCorners[12] = 0;
      yCorners[12] = 20;
    }
   public void setX(int x){myCenterX = x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY = y;}
   public int getY(){return (int)myCenterY;}
   public void setDirectionX(double x){myDirectionX = x;}
   public double getDirectionX(){return myDirectionX;}
   public void setDirectionY(double y){myDirectionY = y;}
   public double getDirectionY(){return myDirectionY;}
   public void setPointDirection(int degrees){myPointDirection = degrees;}
   public double getPointDirection(){return myPointDirection;}  
   
   public void move()
   {
       myCenterX ++;
     myCenterY ++;
     myPointDirection += mySpeed;
      //change the x and y coordinates by myDirectionX and myDirectionY       
  

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
   }
}
