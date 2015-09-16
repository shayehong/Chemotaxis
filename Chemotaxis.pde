 //declare bacteria variables here  
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here   

 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 //lots of java!   
 {     
 	int bX;
 	int bY;
 	int co;

 	Bacteria(int x,int y){
 		bX = x;
 		bY = y;
 		co = c;
 	}

 	void move(){
 		int dir = (int)(Math.random()*4);
 		int dist = (int)(Math.random()*20)+1;

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
 		ellipse(bX,bY,(int)(Math.random()*20)+5
 	}

 	
 }    