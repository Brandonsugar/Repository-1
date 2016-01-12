class Ball{
  color c;
  float xPos;
  float yPos;
  float gravity;
  float xSpeed;
  float ySpeed;
  
  Ball(){
    c=color(0);
    xPos=width/2;
    yPos=height/2;
    ySpeed=5;
    xSpeed=2.5;
    gravity=0.98;
  }
  
  void display(){
    stroke(0);
    fill(c);
    ellipse(xPos,yPos,70,70);
  }
  void gravity(){
    ySpeed=ySpeed+gravity;
   if(yPos>=967){
    ySpeed=ySpeed*-0.85;
   }
  }
  void sideMove(){
    xPos=xPos+xSpeed;
  }
  void verticalMove(){
    yPos=yPos+ySpeed;
  }
  void bounce(){
    if(xPos>=967){
      xSpeed=xSpeed*-0.7;
    }
    if(xPos<=42){
      xSpeed=xSpeed*-0.75;
    }
  }
}