class Box
{
  float x;
  float y;
  float s;

  color col = color(random(0, 255), random(0, 255), random(0, 255));

  Box(float tempX, float tempY, float tempS)
  {
    x = tempX;
    y = tempY;
    s = tempS;
  }

  void display()
  {
    rectMode(CENTER);
    noStroke();
    fill(col);
    rect(x, y, s, s);
    
    stroke(0);
    line(x, y - s/2, x, y + s/2);
    line(x - s/2, y, x + s/2, y);
  }
}