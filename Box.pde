class Box
{
  float x;
  float y;
  float s;

  float speed = random(1, 5);

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

  void fall()
  {
    float d = dist(x, y, p.x, p.y);

    if (y < height + s/2)
    {
      y += speed;
    } else if (y > height + s/2)
    {
      missed ++;
      speed = random(1, 5);
      col = color(random(0, 255), random(0, 255), random(0, 255));
      y = 0 - s/2;
      x = random(s/2, width - s/2);
    }

    if (d < s/2 + pHeight/2)
    {
      collected ++;
      speed = random(1, 5);
      col = color(random(0, 255), random(0, 255), random(0, 255));
      y = 0 - s/2;
      x = random(s/2, width - s/2);
    }
  }
}
