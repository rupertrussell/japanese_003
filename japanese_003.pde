// Japanese inspired design by Rupert Russell
// 10 October 2020 - Still waiting to hear from Parks
// Artwork on redbubble at:
// Processing 3.5.4 code on Github at: https://github.com/rupertrussell/japanese_003

int rowNumber = 0;

int scale = 80;
float gridSize = 210; // 320
float rotateDegrees = 6;  //  works best with even numbers
float maxNumber = (360 / rotateDegrees)   ;
void setup() {
  background(0);
  stroke(255);
  strokeWeight(5);
  size(4600,3000);
  noFill();
  smooth();
  noLoop();
}


void draw() {


  for (float y = gridSize; y < height - gridSize ; y = y + gridSize * 1 ) {

    for (float x = gridSize; x < width - gridSize * 1.45; x = x + gridSize * 1.5) {
      push();
      if (rowNumber % 2 == 0) { 
        stroke(255);
        nowaki(x, y);
      } else {
        stroke(255, 0, 0);
        nowaki(x + gridSize * 0.8, y);
      }
      pop();
    }
    rowNumber ++;
    println(rowNumber);
  }


  save(width + "x" + height + "_japanese_001.png");
  println("saved");
  exit();
}

void nowaki(float xOffset, float yOffset) {
  translate(xOffset, yOffset);

  for (int x = 0; x < maxNumber; x++) {
    arc(100, 0, scale, scale, radians(0), radians(180));
    rotate(radians(rotateDegrees));
  }
}
