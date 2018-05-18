/* 
ICS4U
2018/05/18
Game Summative
Person class
Made by Eren Sulutas and Nabeel Warsalee
*/

class Person extends Rectangle {
   private int lives; // Private integer variable for the number of lives.
   
   // Default constructor for the Person class
  Person() {
    super();
    lives = 0;
  }
  
  // Constructor that takes in parameters for lives, xPos and yPos
  Person(int health, float x, float y) {
    super(x, y);
    this.lives = health;
  }
  
  // Update method to update the players state..
  void update() {
  }
  
  // Show method to show the player object
  void show() {
    fill(255);
    rect(getX(), getY(), getWidth(), getHeight()); // Shows player as a rectangle on screen.
  }
  
  // Move method to move the person on screen
  void move(char direction) {
    float v = 50; // Float for how many pixels it moves per move
    
    // Selection statements for moving up, down, right and left. Uses method inBounds to check if it will be inbounds before doing move
    if (direction == 'u' && inBounds(getX(), getBottom() - v)) { // For moving up
      setPos(getX(), getBottom() - v); // Will substract to move it up screen
    } else if (direction == 'd' && inBounds(getX(), getBottom() + v)) { // For moving down
      setPos(getX(), getBottom() + v);
    } else if (direction == 'r' && inBounds(getX() + v, getBottom())) { // For moving right
      setPos(getX() + v, getBottom());
    } else if (direction == 'l' && inBounds(getX() - v, getBottom())) { // For moving left
      setPos(getX() - v, getBottom());
    }
    updatePos(); // Updating the coordinates of the right, top and middle
  }
  
  // Method to check if the player is out of bounds (Uses the known dimensions of te gameplay box)
  boolean inBounds(float newX, float newY) {
    if (newX >= 200 && newX <= 1350 && newY >= 200 && newY <= 1350) {
      return true;
    } else {
      return false;
    }
  }
  
  // Series of getter and setter methods.
  
  // Setter method for lives
  void setLives(int health) {
    this.lives = health;
  }
  
  // Getter/accessor for the lives
  int getLives() {
    return this.lives;
  }

}
