//charles
//4-2-2025


color red = #E30000; // stores colors
color blue = #90e0ef;
color green = #02F254;


void setup() {
  size(1000, 1000);
}

void draw() {
  //sky
  background(blue);
  //grass
  fill(green);
  rect(0, 500, width, 500); //x, y, w , h
  
  //house
  fill(#ECF500);
  square(width-600, 500, 200); //x, y, size
  fill(red);
  triangle(600, height/2, width/2, 200, width-600, height/2); //x1, y1, x2, y2, x3, y3
  fill(#A188D8);
  circle(500, 475, 50); //x, y, diameter
  line(500, 450, width/2, height/2); //x1, y1, x2, y2
  line(475, 474, 525,475); //x1, y1, x2, y2
  fill(#A58305);
  rect(475,600,50,100);
  fill(#5F8AE5);
  circle(482, 647,5);
  
  //sun
  fill(#FC8208);
  circle(100, 100, 75);
  println(mouseX,mouseY);
}
