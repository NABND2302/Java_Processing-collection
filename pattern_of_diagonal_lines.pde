void setup() {
  size(500, 500);
  background(220);  // Set the background color
}

void draw() {

   background(128);         //set background for every time
  int grideSize = int(5+(float(mouseX)/width)*(10)); // Number of lines
  int cellSpace = width/grideSize;  // Space between lines

  for (int i = 0; i < grideSize; i++) {
    int x = (i + 1) * cellSpace; // Calculate the x-coordinate for each line
   
    
    line(x, 0, width, x);    // pattern of diagonal lines
    
    println(x,cellSpace);
  }
}
