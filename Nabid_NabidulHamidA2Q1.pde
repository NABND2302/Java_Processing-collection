// all global variable

int rectX, rectY;
float rectWidth = 50;
float rectHeight = 50;
float circleRedius=10;
int diceRoll;
float money = 40; 



void setup() {
  size(400, 400);
  stroke(0);
  frameRate(1); // Set the frame rate to control the speed
  background(255);
  rectX = int(random(50,350)); // Initialize the  rect X-coordinate
  rectY = int(random(height - rectHeight)); // Initialize the rect Y-coordinate
}

void draw() {
  
  text("$"+money,10, 30); // show money amount
  rect(0,0,50,width); //money bar
  fill(#5224D3);
  rect(0,0,50,width- money); //up down money amount bar 
         // Roll the die and update the money
  
  if (money >1 && money < 400) {
                   
    diceRect(); // dice code
    
   println("Current bank statement :"+money);
    if (diceRoll == 1) {
      money *= 1.5; // Multiply by 1.5
    } else if (diceRoll == 2) {
      money *= 1.3; // Multiply by 1.3
    } else if (diceRoll == 3) {
      // No change
    } else if (diceRoll == 4) {
      money *= 0.5; // Multiply by 0.5 (lose 50%)
    } else if (diceRoll == 5) {
      money *= 0.75; // Multiply by 0.75 (lose 25%)
    } else if (diceRoll == 6) {
      money *= 2.0; // Double your money
    }
  } else if (money >= 400) {
    
    println("Congratulations! You've won $" );
    
  } else {
    
    println("Oops! You've lost all your money.");
    setup();
    text("$"+money,10, 30);
    
  }
  
 
}

// Dice Rect to show Dice in rendom position
void diceRect(){
  
  //Dice display black background
  //fill(#06040A);
  //rect(rectWidth,0, width, height);
  // Draw the rectangle at the current position
  fill(143);
  rect(rectX, rectY, rectWidth, rectHeight);
  dicepips();
  
  // Move the rectangle to a new random position
  rectX = int(random(50,350));
  rectY = int(random(height - rectHeight));
 
 
}

// Dice circle code show inside Dice Rect
void dicepips(){
   
   diceRoll=int(random(1,7)); 
   
   if(diceRoll==1){
          fill(205);
          ellipse(rectX+25,rectY+25,circleRedius,circleRedius);
          
  }else if(diceRoll==2){
          fill(205);
          ellipse(rectX+15,rectY+25,circleRedius,circleRedius);
          ellipse(rectX+35,rectY+25,circleRedius,circleRedius);
          
  }else if(diceRoll==3){
          fill(205);
          ellipse(rectX+15,rectY+15,circleRedius,circleRedius);
          ellipse(rectX+35,rectY+15,circleRedius,circleRedius);
          ellipse(rectX+25,rectY+35,circleRedius,circleRedius);
         
  }else if(diceRoll==4){
          fill(205);
          ellipse(rectX+15,rectY+15,circleRedius,circleRedius);
          ellipse(rectX+35,rectY+15,circleRedius,circleRedius);
          ellipse(rectX+15,rectY+35,circleRedius,circleRedius);
          ellipse(rectX+35,rectY+35,circleRedius,circleRedius);
          
  }else if(diceRoll==5){
          fill(205);
          ellipse(rectX+25,rectY+25,circleRedius,circleRedius);
          ellipse(rectX+10,rectY+10,circleRedius,circleRedius);
          ellipse(rectX+40,rectY+10,circleRedius,circleRedius);
          ellipse(rectX+10,rectY+40,circleRedius,circleRedius);
          ellipse(rectX+40,rectY+40,circleRedius,circleRedius);
          
  }else if(diceRoll==6){
          fill(205);
          ellipse(rectX+10,rectY+10,circleRedius,circleRedius);
          ellipse(rectX+40,rectY+10,circleRedius,circleRedius);
          ellipse(rectX+10,rectY+40,circleRedius,circleRedius);
          ellipse(rectX+40,rectY+40,circleRedius,circleRedius);
          ellipse(rectX+10,rectY+25,circleRedius,circleRedius);
          ellipse(rectX+40,rectY+25,circleRedius,circleRedius);
          
 }
}
