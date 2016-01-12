class Fighter{
  color c;
  float xPos;
  float yPos;
  
  
  Fighter(float xPosi, float yPosi){
    c=color(0);
    xPos=xPosi;
    yPos=yPosi;
  }
  
  void display(float xPos,float yPos){
    stroke(0);
    fill(c);
    //body
    ellipse(xPos,yPos,50,50);
    //struts
    rect(xPos+20,yPos-5,40,7);
    rect(xPos-60,yPos-5,40,7);
    //wings
    rect(xPos-65,yPos-55,10,105);
    rect(xPos+56,yPos-55,10,105);
    }
}