void setup()
{
  size(400, 400);
  noLoop();
  textAlign(CENTER);
}
int evendie = 0;
int odddie = 0;
int count = 0;
int evencount = 0;
int oddcount = 0;
void draw()
{
  background(255);
  for (int i = 0; i < 100; i++)
  {
    Dice bob = new Dice();
    //write line below
    bob.show();
  }
  text(" The sum of evens are: " + evencount, 80, 375);
  text(" The sum of odds are: " + oddcount, 80, 390);
  text(" The total sum: " + count, 80,360);
  text(" The amount of even die: " + evendie, 300, 375);
  text(" The amount of odd die: " + odddie, 300, 390);
}
void mousePressed()
{
  odddie = 0;
  evendie= 0;
  evencount = 0;
  oddcount = 0;
  count = 0;
  redraw();
}
class Dice
{
  int myX, myY;
  Dice()//constructor
  {
    myX = (int)(Math.random() * 350);
    myY = (int)(Math.random() * 290);
  }
  void show(){
    if((int)(Math.random()* 7) == 1){
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      rect(myX, myY, 50,50);
      fill(0);
      ellipse(myX+ 25,myY + 25, 10, 10);
      count = count + 1;
      oddcount = oddcount + 1;
      odddie = odddie + 1;
    }
    if((int)(Math.random()* 7) == 2){
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     rect(myX, myY, 50,50);
     fill(0);
     ellipse(myX+ 25,myY + 15, 10, 10);
     ellipse(myX+ 25,myY + 35, 10, 10);
     count = count + 2;
     evencount = evencount + 2;
     evendie = evendie + 1;
    }
    if((int)(Math.random()* 7) == 3){
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     rect(myX, myY, 50,50);
     fill(0);
     ellipse(myX+ 25,myY + 25, 10, 10);
     ellipse(myX+ 15,myY + 15, 10, 10);
     ellipse(myX+ 35,myY + 35, 10, 10);
     count = count + 3;
     oddcount = oddcount + 3;
     odddie = odddie + 1;
    }
    if((int)(Math.random()* 7) == 4){
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     rect(myX, myY, 50,50);
     fill(0);
     ellipse(myX+ 15,myY + 15, 10, 10);
     ellipse(myX+ 15,myY + 35, 10, 10);
     ellipse(myX+ 35,myY + 15, 10, 10);
     ellipse(myX+ 35,myY + 35, 10, 10);
     count = count + 4;
     evencount = evencount + 4;
     evendie = evendie + 1;
    }
    if((int)(Math.random()* 7) == 5){
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     rect(myX, myY, 50,50);
     fill(0);
     ellipse(myX+ 12,myY + 12, 10, 10);
     ellipse(myX+ 12,myY + 38, 10, 10);
     ellipse(myX+ 25,myY + 25, 10, 10);
     ellipse(myX+ 38,myY + 12, 10, 10);
     ellipse(myX+ 38,myY + 38, 10, 10);
     count = count + 5;
     oddcount = oddcount + 5;
     odddie= odddie + 1;
    }
    if((int)(Math.random()* 7) == 6){
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     rect(myX, myY, 50,50);
     fill(0);
     ellipse(myX+ 15,myY + 12, 10, 10);
     ellipse(myX+ 15,myY + 25, 10, 10);
     ellipse(myX+ 15,myY + 38, 10, 10);
     ellipse(myX+ 35,myY + 12, 10, 10);
     ellipse(myX+ 35,myY + 25, 10, 10);
     ellipse(myX+ 35,myY + 38, 10, 10);
     count = count + 6;
     evencount = evencount + 6;
     evendie = evendie + 1;
    }
  }
}
