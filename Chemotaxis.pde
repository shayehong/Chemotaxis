 //declare bacteria variables here  
 Bacteria [] colony;
 Predator eat;
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(750,750);
 	eat = new Predator();
 	colony = new Bacteria[40];

 	//makes the bacteria
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria(200,200);
 	}

 	

 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(0);
 	eat.move();
 	eat.show();
 	
	 	for(int j =0; j<colony.length; j++){
	 		colony[j].move();
	 		colony[j].show();
	 		}

 		}
 	
   
 class Bacteria    
 //lots of java!   
 {     
 	int bX;
 	int bY;
 	int cO;
 	//boolean alive;

 	Bacteria(int x,int y){
 		bX = x;
 		bY = y;
 		cO = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),200);
 		//alive = true;

 		//co = (int)(Math.random()*255);
 		 
 	}

 	void move(){
 		int dir = (int)(Math.random()*4);
 		int dist = (int)(Math.random()*3)+1;
 		
 		if(dir == 0){
 			//moves to the right
 			bX += dist;
 		}
 		if(dir == 1){
 			//moves to the left
 			bX -= dist;
 		}
 		if(dir ==2){
 			//moves down
 			bY += dist;
 		}
 		if(dir == 3){
 			//moves up
 			bY -= dist;

 		}

 	}

 	void show(){
 		if(get(bX,bY) != color(255,165,0)){
 			noStroke();
	 		fill(cO,180);
	 		ellipse(bX,bY,15,15);
	 		fill(cO,180);
	 		ellipse(bX,bY,9,9);

 		}
	 		
	 	
 	}
 

}


    
class Predator 
{
	int myX;
	int myY;
	int co;
	int speed;

	Predator(){
		 myX = 50;
		 myY = 50;
		 co = color(255,165,0);
		 speed = 3;

	}
	void move()
	{
		if(myX <= mouseX)
		{
			myX+=speed;
		}
		if(myX >= mouseX)
		{
			myX-=speed;
		}
		if(myY <= mouseY)
		{
			myY+=speed;
		}
		if(myY >= mouseY)
		{
			myY-=speed;
		}
	}

	void show(){
		fill(co);
		ellipse(myX,myY,60,60);
	}

}
