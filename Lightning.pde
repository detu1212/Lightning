int startX, startY, endX, endY;
boolean isLightning = false;

void setup() {
  size(400, 400);
  background(0);
  stroke(255);
  strokeWeight(2);
}

void draw() {
  if (random(1) < 0.04) {
    startX = int(random(width));
    startY = 0;
    endX = int(random(width));
    endY = height;
    isLightning = true;
  }

  if (isLightning) {
    float branchX = endX + random(-30, 30);
    float branchY = endY + random(-30, 30);

    line(startX, startY, endX, endY);
    line(endX, endY, branchX, branchY);
    
    startX = int(endX);
    startY = int(endY);
    endX = int(branchX);
    endY = int(branchY);
    
    if (startY > height) {
      isLightning = false;
      background(0);
    }
  }
}
