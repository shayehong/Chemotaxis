import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here  
 Bacteria [] colony;
 public void setup()   
 {     
 	//initialize bacteria variables here  
 	size(500,500);
 	colony = new Bacteria[20];

 	//makes the bacteria
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria(200,200);
 	}



 }   
 public void draw()   
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
 	//int co;

 	Bacteria(int x,int y){
 		bX = x;
 		bY = y;
 		//co = (int)(Math.random()*255);
 		 
 	}

 	public void move(){
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

 	public void show(){
 		noStroke();
 		fill(233,253,255,100);
 		ellipse(bX,bY,15,15);
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(bX,bY,9,9);
 	}

 	
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
