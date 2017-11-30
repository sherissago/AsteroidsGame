 class Asteroid extends Floater
{
  public int mySpeed;
  public Asteroid()
    {
      mySpeed = (int)(Math.random()* 4)-2;
      myColor = color(13,230,230);
      corners = 13;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 0;
      yCorners[0] = 100/2;
      xCorners[1] = 30/2;
      yCorners[1] = 50/2;
      xCorners[2] = 100/2;
      yCorners[2] = 65/2;
      xCorners[3] = 75/2;
      yCorners[3] = 0;
      xCorners[4] = 100/2;
      yCorners[4] = -65/2;
      xCorners[5] = 30/2;
      yCorners[5] = -50/2;
      xCorners[6] = 0;
      yCorners[6] = -100/2;
      xCorners[7] = -30/2;
      yCorners[7] = -50/2;
      xCorners[8] = -100/2;
      yCorners[8] = -65/2;
      xCorners[9] = -75/2;
      yCorners[9] = 0;
      xCorners[10] = -100/2;
      yCorners[10] = 65/2;
      xCorners[11] = -30/2;
      yCorners[11] = 50/2;
      xCorners[12] = 0/2;
      yCorners[12] = 100/2;
      
      myCenterX = (int)(Math.random()*width);
      myCenterY = (int)(Math.random()*height);
      myPointDirection = (int)(Math.random()*360);
      myDirectionX = (int)(Math.random()*4)-1;
      myDirectionY = (int)(Math.random()*4)-1;
      
      
      
      
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
