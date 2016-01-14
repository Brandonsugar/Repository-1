PVector greenOneTwo = new PVector(255,255);
PVector greenThreeFour = new PVector(255,255);

void setup(){
  size(800,800);
  
}
void draw(){
  background(255,0,0);
  PVector half = new PVector(width/2,height/2);
  //up and down line
  line(half.x,0,half.x,800);
  //right and left line
  line(0,half.y,width,half.y);
  //Top left script
  if(mouseX<=half.x && mouseY<=half.y){
    fill(255,255,255);
    //top left rect
    rect(0,0,half.x,half.y);
    }
    //top right script
    if(mouseX>=half.x && mouseY<=half.y){
        //top right rect
  rect(half.x,0,half.x,half.y);
      fill(255,255,greenOneTwo.y);
    }
    if(mouseX<=half.x && mouseY>=half.x){
      fill(255,255,greenThreeFour.x);
        //bottom left rect
  rect(0,half.y,half.x,half.y);
    }
    
    if(mouseX>=half.x && mouseY>=half.y){
      fill(255,255,255);
       //bottom right rect
  rect(half.x,half.y,half.x,half.y);
}
if(mousePressed){
  fill(0,100,0);
  rect(0,0,800,800);
}
}
  