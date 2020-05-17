Player p;
Box b;

float pWidth;
float pHeight;

float boxSize;

void setup()
{
  size(500, 500);

  pWidth = map(35, 0, 500, 0, width);
  pHeight = map(70, 0, 500, 0, height);
  
  boxSize = 50;

  p = new Player(width/2, height - pHeight/2, pWidth, pHeight);
  b = new Box(width/2, 0, boxSize);
  
}

void scoreCounter()
{
  textSize(map(15, 0, 500, 0, width));
  fill(255);
  text("Collected: ", map(5, 0, 500, 0, width), map(20, 0, 500, 0, width));
  text("Missed: ", map(5, 0, 500, 0, width), map(40, 0, 500, 0, width));
}

void draw()
{
  background(0);
  scoreCounter();
  p.display();
  p.move(3);
  
  b.display();
  b.fall();
}
