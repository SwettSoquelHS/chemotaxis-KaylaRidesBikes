Bacteria[] Bac;//declare bacteria variables here 


void setup() {
   size(500,500);
   background(0);
 	//initialize bacteria variables here   
  Bac = new Bacteria[50];
  for(int i = 0; i < Bac.length; i++){
    int x = (int)(width*Math.random());
    int y = (int)(height*Math.random());
    int b = (int)(255*Math.random()+55);
    float m = (int)(10*Math.random()+1);
    Bac[i] = new Bacteria(x,y,b,m);
  }
 }   
void draw() {    
 	//move and show the bacteria  
 
  for(int i = 0; i < Bac.length; i++){
    Bac[i].show(); 
    Bac[i].move();
  }
  
 }  
class Bacteria {     
 	//lots of java!  
  int x_pos, y_pos;
  int bacColor;
  float moveFactor;
  
  //constructor:
  Bacteria(int x, int y, int b, float m){
    x_pos = x;
    y_pos = y;
    bacColor = b;
    moveFactor = m;
    
  }
  void move(){
     
    
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
