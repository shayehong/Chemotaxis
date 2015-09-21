 //declare bacteria variables here  
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(500,500);
 	colony = new Bacteria[20];

 	//makes the bacteria
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria(200,200);
 	}



 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(0);
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

 	Bacteria(int x,int y){
 		bX = x;
 		bY = y;
 		cO = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),200);

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
 		noStroke();
 		fill(cO,190);//(233,253,255,100);
 		ellipse(bX,bY,15,15);
 		fill(cO);
 		ellipse(bX,bY,9,9);
 	}

 	
 }    