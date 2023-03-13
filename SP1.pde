class Ball {
  //this is my attributter
  float x;
  float y;
  float speed;
  float w;
  
  
  //This is my constructor
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 2;
  }
  
  void gravity() {
    // Here am I adding gravity to speed
    speed = speed + gravity;
  }
  
  void move() {
    // Here I have adding the speed to y location
    y = y + speed;
    // If the ball reaches the bottom
    // Reverse speed
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
  void display() {
    // Display the circle
    // I have set the color to all the time randomly
    // switch color from dark til light with red, green and blue
    float r = random(255);
    float g = random(255);
    float b = random(255);
    fill(r,g,b);
    stroke(0);
    ellipse(x,y,w,w);
  }
  
}
