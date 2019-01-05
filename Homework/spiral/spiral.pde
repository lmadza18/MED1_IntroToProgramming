//define
float spiral = 2; //radius of spiral
float t = 0; //time
float s1 = 15;//width of spiral itself
float theta = 0;


void setup() {
  size(1000, 1000); 
  background(255);
}

void draw() {

  float x = spiral * cos(theta);
  float y = spiral * sin(theta);


  //Draw the ellipse with location determined by Perlin noise

  noStroke();
  fill(0, random(255), random(255), noise(spiral)*255);
  ellipse(x + width/2, y + height/2, s1, s1);
  theta += 0.04; //speed
  spiral += 1;
  t += 0.1;

}
