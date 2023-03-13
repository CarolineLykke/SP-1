// I have start the array with two element
Ball[] balls = new Ball[2];
// I have used gravity in the program, to the ball, so it will bounce
// whenever the ball hits the bottom
float gravity = 0.1;

void setup() {
  size(480, 270);

  // I have I initialize the two balls in index 0 and 1 
  // when you first run the program there will be two balls
  // the x coordinations will be randomly and the size will too
  balls[0] = new Ball(random(10,200), 0, random(10,30));
  balls[1] = new Ball (random(200,440),0,random(10,40));
  
}

void draw() {
  background(255);

  // Here I am saying that whatever the length of that array is, 
  // it most update the array and display all of the objects.
  for (int i = 0; i < balls.length; i++ ) { 
    balls[i].gravity();
    balls[i].move();
    balls[i].display();
  }
}

void mousePressed() {
  // If you press the mouse on the screen there will automaticly come a new ball
  // and it will random get a size
  Ball b = new Ball(mouseX, mouseY, random(10,40)); 
  // when i use  the function append(), there will automaticly be supplied
  // an element the array in the end
  balls = (Ball[]) append(balls, b);
  // The print out line is printing the sum of the balls x and y
  // coordinates, whenever there are beeing making a new ball
  // I have used a String to right a text before the sum is shown
  println("The sum of mouseX and mouseY is: " +(mouseX+mouseY));
}
