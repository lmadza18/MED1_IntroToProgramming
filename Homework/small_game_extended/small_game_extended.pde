//declare variables
Ball b;
Win w;
//moreBalls mb;
//points
int score = 0;


//more balls
int ballCount = 5;

//int[] balls = new int[ballCount];

moreBalls[] mb = new moreBalls[5];



void setup() {
  size(1200, 800);
  smooth();

  w = new Win();  
  b = new Ball();
  //mb = new moreBalls();


  mb[0] = new moreBalls();
  mb[1] = new moreBalls();
  mb[2] = new moreBalls();
}


void draw() {
  background(255);
  frameRate(60);

  textSize(50);
  fill(176);
  text("Score:" + score, width/2, height/2);


  b.display();

  mb[0].display();
    mb[1].display();

  mb[2].display();


  //mb.display();
  w.display();
}

void mousePressed() {
  float d = dist(b.ballX, b.ballY, mouseX, mouseY);
  if (d < 50) {
    score = score + 1;
  } else if (score == 10) {
    w.display();
  }
}
