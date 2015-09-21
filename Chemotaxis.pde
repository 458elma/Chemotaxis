 //declare bacteria variables here 
 Bacteria [] quartente ;
 
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400,400);
 	quartente = new Bacteria[50];
 	for(int i = 0; i<quartente.length; i++ ) 
 	{
 		quartente[i] = new Bacteria();
 	}
 	
 	//it = new Food(); 
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(255,0,0);
 	for(int i = 0; i<quartente.length; i++)
	{
		quartente[i].move(); 
 		quartente[i].show();
 		
	} 	
	if (mousePressed) {
		Food it = new Food();
		it.part();
 	}
	
 	
 } 
 void mousePressed() 
 {
 	
 }
 
 class Bacteria    
 {     
 	//lots of java!
 	int theX, theY, theClr, t, c;  
 	Bacteria() 
 	{
 		theX = 200;
 		theY = 200;
 		theClr = ((int)(Math.random()*255),175,(int)(Math.random()*255));
 		
 	} 

 	void move() 
 	{

 		if(mousePressed) 
 		{
 			if(mouseX < theX) 
 			{
 				t = 3;
 			} else {
 				t = -1;
 			}
 			if (mouseY < theY) 
 			{
 				c = 3;
 			} else {
 				c = -1;
 			}
 			theX = theX + ((int)(Math.random()*3)-t);
 			theY = theY + ((int)(Math.random()*3)-c);
 		}
 		theX = theX + ((int)(Math.random()*3)-1);
 		theY = theY + ((int)(Math.random()*3)-1);
 		if(theX == mouseX && theY == mouseY) {
 			theClr = (0,0,255);
 		}
 		else {
 			theClr = ((int)(Math.random()*255),175,(int)(Math.random()*255));
 		}
 		
 	}
 	void show() 
 	{
 		noStroke();
 		
 		fill(theClr);
 		ellipse(theX,theY,20,20);
 		
 	}
 	
 		
 	
 	

 }    
 class Food
 {
 	int myX, myY;
 	Food() 
 	{
 		
 		
			myX = mouseX;
 			myY = mouseY;
 		
 	}
 	void part() 
 	{
 		
 			fill(0,68,255);
 			ellipse(myX,myY,10,10);
 		
 		
 	}
 }
