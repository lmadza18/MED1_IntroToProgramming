class Dog{
  
  Dog(){
    
  }
  
  void display(){
    
  if (puppy.isPlaying()) { //moving dog when correct tree is clicked
    dog.resize(0, 100);
    image(dog, dogX, dogY);
    dogX = dogX - dogSpeed;
    } else if (dogX < 0){
    dogX = tempDogX;
  } else if(tempDogX < 0){
    tempDogX = dogX;
  }    

  }  
}
