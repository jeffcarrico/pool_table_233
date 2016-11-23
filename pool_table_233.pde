PImage pool_table;
void setup()
{
  pool_table = loadImage("pool table.png");
  size(1025, 575);
}

void draw()
{
  image(pool_table, 0, 0);
  new Table();
}

class Point {
  float x, y;
  Point (float a, float b)
  {
    x = a;
    y = b;
  }
  int distance(Point p)
  {
    return int(sqrt( pow(x-p.x, 2) - pow(y-p.y, 2) ));
  }
}

class Ball {
  float rad;
  Point center;
  Point contact_point;
  color col;
  Ball()
  {
    rad = 0;
    //center = new Point();
    col = 0;
  }
  Ball (float a, int b, int c, int d)
  {
    rad = a;
    center = new Point(b, c);
    col = d;
    strokeWeight(1);
    fill(col);
    ellipse(b, c, a, a);
  }
}

class Stick
{
  Point start_p;
  Point end_p;
  color col;
  int length;
  Stick (float x1, float y1, float x2, float y2)
  {
    start_p = new Point(x1, y1);
    end_p = new Point(x2, y2);
    length = end_p.distance(start_p);
    col = #7C4C05;
    strokeWeight(6);
    fill(col);
    line(start_p.x, start_p.y, end_p.x, end_p.y);
  }
}

class Table
{
  Ball []  b_arr;
  Ball cue_ball;
  Stick st;
  Table ()
  {
    cue_ball = new Ball(50, 200, 300, #FFFFFF);
    b_arr = new Ball[3];
    b_arr[0] = new Ball(50, 250, 350, #FA0D0D);
    b_arr[1] = new Ball(50, 250, 450, #0B14E3);
    b_arr[2] = new Ball(50, 150, 450, #ED2805);
    st = new Stick(width/2, height/2, width/2+40, height/2+40);
  }
}