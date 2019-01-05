//importing sound library
import processing.sound.*;
SoundFile bird; 
SoundFile dragon;
SoundFile puppy;

//use of image
PImage photo;
PImage dog; //source: http://pngimg.com/imgs/animals/dog/, http://pngimg.com/download/50349

//array of amount of trees from class
Tree[] trees = new Tree[3];
int treeCount = 3;
int treeX = 375;

//declaring the rest of my variables
int treeStartX = 200;
int treeEndX = 540;
int treeStartY = 200; 
int treeEndY = 640;
int treeDistance = 40;
int treeEndNewX = 100;
float dist1 = 1.7;
float dist2 = 2.4;

//tree radius
int treeVeryTopXR = 65;
int treeTopXR = 100;
int treeMidXR = 150;
int treeBottomXR = 200;

//grass
int grassX = 750;
int grassY = 810;
int grassW = 10;
int grassH = 50;

//dog
int dogX = 1550;
int dogY = 685;
int dogSpeed = 8;
int tempDogX = dogX;

//sun colours
int sunNewC1 = #B2A469;
int sunNewC2 = #FFB3B6;
int sunNewC3 = #FFF5C9;

int newFenceHeight = 50;

//other classes
Fence f;
Sun s;
Dog d;

void setup() { //initialising content
  size(1500, 800);
  background(#5987CC); //bg colour

  //mousePressed();

  //loading background image
  photo = loadImage("sky_background.jpg");
  dog = loadImage("dog.png");

  //loading sound files
  bird = new SoundFile(this, "bird.wav"); //source: http://soundbible.com/2207-Cartoon-Birds-2.html
  dragon = new SoundFile(this, "dragon.wav"); //source: http://soundbible.com/2127-Dragon-Fire-Breath-and-Roar.html
  puppy = new SoundFile(this, "puppy.wav"); //source: http://soundbible.com/2136-Puppy-Barking.html

  for (int i = 0; i < treeCount; i++) { //amount of trees and distance between them
    trees[i] = new Tree(treeX+(treeX*i));
  }

  f = new Fence();
  s = new Sun();
  d = new Dog();
}

void draw() {
  image(photo, 0, 0); //background image

  f.display(); //fence
  s.display(); //sun

  for (int i = 0; i < treeCount; i++) { //showing trees in draw
    //println(i);
    trees[i].display();
  }

  d.display();

  rect(grassX, grassY, width+grassW, grassH);
} 

void mousePressed() {
  //change to trees instead of area
  if (mousePressed) //bird sound
  {
    if (mouseX > treeStartX && mouseX < treeEndX && mouseY > treeStartY && mouseY < treeEndY && !bird.isPlaying()) {
      bird.play();
      s.sunC = sunNewC2; //sun changes colour when tree is clicked
      s.stroke = sunNewC3;
    }

    //if (mousePressed) //dragon sound
    else if (mouseX > treeEndX+treeDistance && mouseX < treeEndX*dist1 && mouseY > treeStartY && mouseY < treeEndY && !dragon.isPlaying()) {
      dragon.play();  
      f.fenceH = f.fenceH-newFenceHeight; //fence height grows when tree is clicked
      f.fenceT = f.fenceT-newFenceHeight;
      //f.fenceC = f.fenceC*5;
    }

    //if (mousePressed)//puppy sound
    else if (mouseX > treeEndX*dist1+treeDistance && mouseX < treeEndX*dist2 && mouseY > treeStartY && mouseY < treeEndY && !puppy.isPlaying()) {
      puppy.play();
      s.sunC = sunNewC3; //sun changes colour when tree is clicked
      s.stroke = sunNewC2;
    }
  }
}
