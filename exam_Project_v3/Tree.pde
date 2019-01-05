
class Tree { //defining the class 'Tree'

  int x;
  int x1, y1, w1, h1; //x and y, width and height for very top circle
  int x2, y2, w2, h2; //top circle
  int x3, y3, w3, h3; //middle circle
  int x4, y4, w4, h4; //bottom circle
  int gStroke; //size of the green stroke
  int strokeC;
  int TreeC; 
  int trunkStroke;
  int trunkC;

  boolean disturb;

  int trunkX, trunkY, trunkW, trunkH; //tree trunk coordinates

  Tree(int tempX) { //constructor
    //trunk, x, y, width, height
    trunkX = 350;
    trunkY = 650;
    trunkW = 70;
    trunkH = 350;

    gStroke = 7; //size of green stroke
    strokeC = #5AB271; //green stroke colour
    TreeC = #B3FFC7; //tree colour
    trunkStroke = #B26B6E; //trunk stroke colour
    trunkC = #FFCCCF; //trunk colour

    x = tempX;

    //very top circle
    y1 = 250;
    w1 = 130;
    h1 = 120;

    //top circle
    y2 = 350;
    w2 = 200;
    h2 = 190;

    //middle circle
    y3 = 450;
    w3 = 300;
    h3 = 200;

    //bottom circle co-ordinates
    y4 = 550;
    w4 = 400;
    h4 = 200;
  }

  void display() {
    //Tree trunk
    stroke(trunkStroke);
    strokeWeight(gStroke);
    fill(trunkC);
    rectMode(CENTER);
    rect(x, trunkY, trunkW, trunkH);

    stroke(strokeC); //very top circle
    strokeWeight(gStroke);
    fill(TreeC);
    ellipse(x, y1, w1, h1);

    stroke(strokeC); //top circle
    strokeWeight(gStroke);
    fill(TreeC);
    ellipse(x, y2, w2, h2);

    stroke(strokeC); //middle circle
    strokeWeight(gStroke);
    fill(TreeC);
    ellipse(x, y3, w3, h3);

    stroke(strokeC); //bottom circle
    strokeWeight(gStroke);
    fill(TreeC);
    ellipse(x, y4, w4, h4);
  }
}
