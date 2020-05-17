class Player
{
  float x;
  float y;
  float w;
  float h;

  Player(float tempX, float tempY, float tempW, float tempH)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }

  void display()
  {
    stroke(255, 0, 0);
    //Head
    noFill();
    float headSize = h/3;
    ellipse(x, y - h/2 + headSize/2, h/3, h/3);
    //Spine
    line(x, y + headSize/2, x, y - headSize/2);
    //Arms
    line(x - w/2, y, x + w/2, y);
    //Legs
    line(x, y + headSize/2, x + w/2, y + h/2);
    line(x, y + headSize/2, x - w/2, y + h/2);
  }

  void move(float speed)
  {
    if (keyPressed)
    {
      if ((key == 'a' || keyCode == LEFT) && x > pWidth/2)
      {
        x -= speed;
      }
      if ((key == 'd' || keyCode == RIGHT) && x < width - pWidth/2)
      {
        x += speed;
      }
    }
  }
}
