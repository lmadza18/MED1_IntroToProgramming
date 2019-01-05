int stepX = 30;
int stepY = 30;

void setup() {
  size(600, 300);
  for (int x = 0; x < width; x += 30) {
    for (int y = 0; y < height; y += 30) {
      fill(random(255));
      rect(x, y, 600, 300);
    }
  }
}

void draw() {
}

void mousePressed()
{
  fill(random(255), random(255), random(255));
  int rectX=(mouseX/stepX)*stepX;
  int rectY =(mouseY/stepY)*stepY;
  rect(rectX, rectY, stepX, stepY);
}
