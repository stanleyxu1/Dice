void setup()
{
  size(500, 500);
  noLoop();
  background(0, 100, 0);
}

int coutnt = 0;
void draw()
{
  background(0, 100, 0);
  for (int y = 15; y<=410; y+=70) {
    for (int x= 15; x<= 450; x+=70) {
      hi = new Die(x, y);
      coutnt = hi.random + coutnt;
      hi.show();
    }
  }
  System.out.println(coutnt);


  fill(100, 100, 100);
  textSize(20);
  text(coutnt, 200, 450);
}


void mousePressed()
{
  coutnt = 0;
  background(0, 100, 0);
  redraw();
}

Die hi;
class Die //models one single dice cube
{
  int myX, myY;
  int random;
  //member variable declarations here

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
    //variable initializations here
  }
  void roll()
  {
    if ((int)(Math.random() * 6 + 1) == 1)
      random = 1;
    else if ((int)(Math.random() * 6 + 1) == 2)
      random = 2;
    else if ((int)(Math.random() * 6 + 1) == 3)
      random = 3;
    else if ((int)(Math.random() * 6 + 1) == 4)
      random = 4;
    else if ((int)(Math.random() * 6 + 1) == 5)
      random = 5;
    else
      random = 6;
    //your code here
  }
  void show()
  {
    fill(255, 255, 255);
    square(myX, myY, 60);

    if (random == 1) {
      fill(150, 0, 0);
      ellipse(myX+30, myY+30, 15, 15);
    } else if (random == 2) {
      fill(150, 0, 0);
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
    } else if (random == 3) {
      fill(150, 0, 0);
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+30, myY+30, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
    } else if (random == 4) {
      fill(150, 0, 0);
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
      ellipse(myX+45, myY+15, 15, 15);
      ellipse(myX+15, myY+45, 15, 15);
    } else if (random == 5) {
      fill(150, 0, 0);
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
      ellipse(myX+45, myY+15, 15, 15);
      ellipse(myX+15, myY+45, 15, 15);
      ellipse(myX+30, myY+30, 15, 15);
    } else if (random == 6) {
      fill(150, 0, 0);
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
      ellipse(myX+45, myY+15, 15, 15);
      ellipse(myX+15, myY+45, 15, 15);
      ellipse(myX+15, myY+30, 15, 15);
      ellipse(myX+45, myY+30, 15, 15);
    }
  }
}
