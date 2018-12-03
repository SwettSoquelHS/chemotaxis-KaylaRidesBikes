Bacteria[] Bac;//declare bacteria variables here 


void setup() {
   size(500,500);
   background(0);
 	//initialize bacteria variables here   
  Bac = new Bacteria[300];
  for(int i = 0; i < Bac.length; i++){
    int x = (int)(width*Math.random());
    int y = (int)(height*Math.random());
    int b = (int)(255*Math.random()+55);
    Bac[i] = new Bacteria(x,y,b);
  }
 }   
 
 
void draw() {    
 	//move and show the bacteria  
  background(0);
  for(int i = 0; i < Bac.length; i++){
    Bac[i].show(); 
    Bac[i].move();
  }
  
 }  
 
 
class Bacteria {     
 	//lots of java!  
  int x_pos, y_pos;
  int bacColor;
  
  //constructor:
  Bacteria(int x, int y, int b){
    x_pos = x;
    y_pos = y;
    bacColor = b;        
  }
  
  void move(){
     x_pos = x_pos + (int)(8*Math.random()-4);
     y_pos = y_pos + (int)(8*Math.random()-4);
    
  }
  
  void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    stroke(0, bacColor, bacColor);
    fill(0, bacColor, bacColor);
    ellipse(0, 0, 30, 30);
    popMatrix();
  }

}    
