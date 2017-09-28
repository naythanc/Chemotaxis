Bacteria[] colony;
 void setup()   
 {     
 	frameRate(20);
 	size(800,800);
 	colony = new Bacteria [100];
 	for (int i = 0; i < colony.length; i++) 
 	{
 		colony[i] = new Bacteria();
 	}  
 }   
 void draw()   
 {    
 	 background(200,200,255);
 	  for (int i=0; i<colony.length; i++) 
 	{
 		colony[i].show();
 		colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY,myColor, ex, ay;
 	Bacteria()
 		{
 			myX = (int)(Math.random()*801);
 			myY = (int)(Math.random()*801);
 			myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 			ex = 250;
 			ay = 250;

 		}	
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 50, 50);
 	} 
 	void move()
 	{
 		if(mouseX > myX)
 		{
 			ex = 0;
 		}
 		else
 		{
 			ex = 15;	
 		}
 		if(mouseY > myY)
 		{
 			ay = 0;
 		}
 		else 
 		{
 			ay = 15;	
 		}
 		myX = myX +((int)(Math.random()*15)-ex);
 		myY = myY + ((int)(Math.random()*15)-ay);
 	}
 }    
/*restart when clicked
void mousePressed()
{
 background(200,200,255);
 	  for (int i=0; i<colony.length; i++) 
 	{
 		colony[i].show();
 		colony[i].move();
 	}
}
*/