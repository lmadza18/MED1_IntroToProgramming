class Object{
  
  int c;
  
  Object(){
    
    c = color(#8588CE);
  }

void display(){
    // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  
  for(int i = 0; i < num; i++){
    fill(c);
    ellipse(x[i], y[i], i/2, i*5);
    
  }
  
}
}
