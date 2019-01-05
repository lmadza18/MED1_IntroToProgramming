class Win{
  
  int win;
  
  Win(){
    win = 255;
  }
  
  
  void display(){
  if (score == 10){
    background(0, 255, 0);
    fill(255);
    textSize(100);
    text("YOU WIN", width/2, height/2);
  }
  }
  
}
