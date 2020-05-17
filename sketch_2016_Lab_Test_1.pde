Player p;

float pWidth;
float pHeight;

void setup()
{
  size(500,500);
  
  pWidth = map(35, 0, 500, 0, width);
  pHeight = map(70, 0, 500, 0, height);
  
  p = new Player(width/2, height - pHeight/2, pWidth, pHeight);
}

void draw()
{
  background(0);
  p.display();
  p.move(3);
}
