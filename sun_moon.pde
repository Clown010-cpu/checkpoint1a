// Charles
// 4-2-2025

color red = #E30000; // Stores colors
color blue = #90e0ef;
color green = #02F254;

// Animation variables
float sunY;
float moonY;
float moonX;
boolean day;

void setup() {
  size(1000, 1000);
  sunY = 150;
  moonY = height + 50; // Start moon below screen
  moonX = 100;
  day = true;
}

void draw() {
  // Set sky color based on time of day
  if (day) {
    background(blue); // Daytime sky
  } else {
    background(0); // Night sky
  }

  // Handle sun and moon transitions
  if (day) {
    drawsun();
  } else {
    drawmoon();
  }

  // Grass
  fill(green);
  rect(0, 500, width, 500);

  // House
  fill(#ECF500);
  square(width - 600, 500, 200);
  fill(red);
  triangle(600, height / 2, width / 2, 200, width - 600, height / 2);
  fill(#A188D8);
  circle(500, 475, 50);
  line(500, 450, width / 2, height / 2);
  line(475, 474, 525, 475);
  fill(#A58305);
  rect(475, 600, 50, 100);
  fill(#5F8AE5);
  circle(482, 647, 5);

  println(mouseX, mouseY);
}

void drawsun() {
  // Sun movement
  fill(#FC8208);
  circle(100, sunY, 75);
  sunY -= 1;

  // When sun goes below screen, switch to night
  if (sunY < -50) {
    sunY = 150; // Reset sun position
    day = false; // Switch to night
    moonY = height + 50; // Reset moon start position
    moonX = 100;
  }
}

void drawmoon() {
  // Moon movement
  fill(#FAFF00);
  circle(moonX, moonY, 75);
  
  // Create shadow effect
  fill(#000000);
  circle(moonX - 25, moonY, 75);

  moonY -= 1;
  
  // When moon reaches top, switch back to day
  if (moonY < 150) {
    day = true;
  }
}
