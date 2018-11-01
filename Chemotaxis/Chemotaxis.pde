Bacteria Bac;//declare bacteria variables here 


void setup() {
   size(500,500);
   background(132, 255, 126);
 	//initialize bacteria variables here   
  Bac = new Bacteria(250, 250);

 }   
void draw() {    
 	//move and show the bacteria  
  Bac.show();
  
 }  
class Bacteria {     
 	//lots of java!  
  int x_pos, y_pos;
  int bacColor;
  
  //constructor:
  Bacteria(int x, int y){
    x_pos = x;
    y_pos = y;
    
  }
  void move(){
     
    
  }
  
  void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    stroke(0, 232, 255);
    fill(0, 232, 255);
    ellipse(0, 0, 30, 30);
    popMatrix();
  }

}    
