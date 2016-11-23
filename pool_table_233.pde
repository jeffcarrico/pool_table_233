PImage pool_table;
void setup()
{

pool_table= loadImage("pool table.png");
size(1025,575);

}

void draw()
{
image(pool_table, 0,0);
Ball Cue_Ball= new Ball (50, 200, 300, 0);


}

class Point
{
float x, y;
Point (float a, float b)
{
x = a;
y = b;
}
}
class Ball
{
float radius;
Point center;
Point contact_point;
color col;

Ball()
{
radius= 0;
//center = new Point();
col = 0;
}


Ball (float a, int b, int c, int d)
{
radius= a;
center= new Point(b,c);
col=d;
ellipse(b, c, a, a);
}
}

class Stick
{
Point start_p;
Point end_p;
color col; //color of the pool stick
int length; //length of the pool stick
//More code
}
class Table
{
Ball [] b_arr; //the length of this array can be 1 for
Ball cue_ball; //iteration 3
Stick st;
//More code
}
