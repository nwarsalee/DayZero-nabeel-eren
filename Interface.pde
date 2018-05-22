/* 
 ICS4U
 2018/05/22 v1
 Game Summative
 Interface class
 Made by Eren Sulutas and Nabeel Warsalee
 */

class Interface {

  // Constructor which displays the game borders
  Interface() {
    showBorder();
  }

  // Instance which displays the borders when they are erased
  void showBorder() {
    background(0);
    fill(255, 0, 0);
    noStroke();
    rect(0, 0, width, width/160); 
    rect(width - width/160, 0, width/160, height); 
    rect(0, height-height/160, width, width/160); 
    rect(0, 0, height/160, height);
  }

  // Instance method that displays the main menu
  void menu() { 
    // Title screen
    showBorder();
    textAlign(CENTER);
    textSize(width/10);
    fill(255);
    text("ZOMBIE SURVIVAL", width/2, height/4);
    textSize(width/20);
    text("Singleplayer", width/2, height/2);
    text("2 Players", width/2, 5 * height/8);
    text("How to play", width/2, 3 * height/4);
    text("Leaderboard", width/2, 7 * height/8);
    noFill();
    stroke(255, 0, 0);
    rectMode(CENTER);
    rect(width/2, height/2.06, width/3, height/15);
    rect(width/2, 5 * height/8 - 23, width/3, height/15);
    rect(width/2, 3 * height/4 - 23, width/3, height/15);
    rect(width/2, 7 * height/8 - 23, width/3, height/15);
    rectMode(CORNER);
  }

  // Instance method that displays the proper interface for gameplay 
  void gamePlay() {
    // Game grid
    showBorder();
    stroke(255);
    fill(0);
    // Y axis 
    for (int i = width/8 + width/160; i <= width - width/8 + width/160; i += (width - width/4) / 24) {
      line(i - width/160, width/8 - width/160, i - width/160, width - width/8 + width/160);
    }
    // X axis
    for (int i = height/8 + height/160; i <= height - height/8 + height/160; i += (height - height/4) / 24) {
      line(height/8 - height/160, i - width/160, height - height/8 + height/160 - width/160, i - width/160);
    }
    fill(255, 0, 0);
    noStroke();
    // Game box
    rect(width/8 - width/160, width/8 - width/160, width - 2 * width/8 + width/140, width/160);
    rect(width/8 - width/160, width - width/8 + width/140 - width/160, width - 2 * width/8 + width/140, width/160);
    rect(width/8 - width/160, width/8 - width/160, width/160, width - 2 * width/8 + width/140);
    rect(width - width/8 + width/140 - width/160, width/8 - width/160, width/160, width - 2 * width/8 + width/75);
  }

  // Instance method that displays the game over screen
  void gameOver() {
    textAlign(CENTER);
    textSize(width/10);
    fill(255, 0, 0);
    text("GAME OVER", width/2, height/2);
    fill(255);
    textSize(width/20);
    text("Main Menu", width/2, height/1.5);
    noFill();
    stroke(255, 0, 0);
    rectMode(CENTER);
    rect(width/2, width/1.54, width/3, width/15);
    textSize(30);
  }

  // Instance method which returns to the main menu when needed
  void returnToMenu() {
    textAlign(CENTER);
    textSize(width/30);
    fill(255);
    text("<-- Return to Main Menu", width/2, height - 100);
    noFill();
    stroke(255, 0, 0);
    rectMode(CENTER);
    rect(width/2, height - 115, width/2.2, height/15);
    rectMode(CORNER);
  }

  // Instance method that displays the game instructions
  void instructions() {
    showBorder();
    textAlign(CENTER);
    textSize(width/10);
    fill(255, 0, 0);
    text("HOW TO PLAY", width/2, height/6);
    returnToMenu();
  }

  // Instance method that displays the leaderboard to the user 
  void leaderboard() {
    showBorder();
    textAlign(CENTER);
    textSize(width/10);
    fill(255, 0, 0);
    text("LEADERBOARD", width/2, height/6);
    returnToMenu();
  }
  
}
