class ClocksHand {
  int cenX;
  int cenY;
  int timeSegment;
  float timeIndex = radians(6);
  float radiusClocHand;
  float radStart = -3.0;
  float radEnd = 3.0;
  int colorTime[] = new int[10];
  float timeWeight;

  ClocksHand(int tempCX, int tempCY, int TempTimeSegment, float tempRadiusClockHand, int tempColorTime[], float tempTimeWeight)  {
    cenX = tempCX;
    cenY = tempCY;
    timeSegment = TempTimeSegment;
    radiusClocHand = tempRadiusClockHand;
    colorTime = tempColorTime;
    timeWeight = tempTimeWeight;
  }

  void clockHandBackGround() {
    strokeWeight(timeWeight + 2);
    stroke(#3E3E3E);
    noFill();
    ellipse(cenX, cenY, radiusClocHand, radiusClocHand);
  }

  void startClockHand10Colors() {
    strokeWeight(timeWeight);
    strokeCap(SQUARE);
    noFill();
    for (int i = 0; i <= timeSegment; i++ ) {
      float con = i * timeIndex;
      if ((10 + i) % 10 == 0) {stroke(colorTime[0]);} 
      else if((10 + i) % 10 == 1) {stroke(colorTime[1]);}
      else if((10 + i) % 10 == 2) {stroke(colorTime[2]);}
      else if((10 + i) % 10 == 3) {stroke(colorTime[3]);}
      else if((10 + i) % 10 == 4) {stroke(colorTime[4]);}
      else if((10 + i) % 10 == 5) {stroke(colorTime[5]);}
      else if((10 + i) % 10 == 6) {stroke(colorTime[6]);}
      else if((10 + i) % 10 == 7) {stroke(colorTime[7]);}
      else if((10 + i) % 10 == 8) {stroke(colorTime[8]);}
      else if((10 + i) % 10 == 9) {stroke(colorTime[9]);}
      arc(cenX, cenY, radiusClocHand, radiusClocHand, (radians(radStart) + con) - HALF_PI, (radians(radEnd) + con) - HALF_PI);
    }
  }

void startClockHand5Colors() {
    strokeWeight(timeWeight);
    strokeCap(SQUARE);
    noFill();
    for (int i = 0; i <= timeSegment; i++ ) {
      float con = i * timeIndex;
      if ((5 + i) % 5 == 0) {stroke(colorTime[0]);} 
      else if((5 + i) % 5 == 1) {stroke(colorTime[3]);}
      else if((5 + i) % 5 == 2) {stroke(colorTime[5]);}
      else if((5 + i) % 5 == 3) {stroke(colorTime[7]);}
      else if((5 + i) % 5 == 4) {stroke(colorTime[9]);}
      arc(cenX, cenY, radiusClocHand, radiusClocHand, (radians(radStart) + con) - HALF_PI, (radians(radEnd) + con) - HALF_PI);
    }
  }

void startClockHand2Colors() {
    strokeWeight(timeWeight);
    strokeCap(SQUARE);
    noFill();
    for (int i = 0; i <= timeSegment; i++ ) {
      float con = i * timeIndex;
      if ((5 + i) % 5 == 0) {stroke(colorTime[9]);} 
      else {stroke(colorTime[0]);}
      arc(cenX, cenY, radiusClocHand, radiusClocHand, (radians(radStart) + con) - HALF_PI, (radians(radEnd) + con) - HALF_PI);
    }
  }

  void nextClockHand10Colors() {
    strokeWeight(timeWeight);
    strokeCap(SQUARE);
    noFill();
    float con = timeSegment * timeIndex;
    if ((10 + timeSegment) % 10 == 0) {stroke(colorTime[0]);} 
      else if((10 + timeSegment) % 10 == 1) {stroke(colorTime[1]);}
      else if((10 + timeSegment) % 10 == 2) {stroke(colorTime[2]);}
      else if((10 + timeSegment) % 10 == 3) {stroke(colorTime[3]);}
      else if((10 + timeSegment) % 10 == 4) {stroke(colorTime[4]);}
      else if((10 + timeSegment) % 10 == 5) {stroke(colorTime[5]);}
      else if((10 + timeSegment) % 10 == 6) {stroke(colorTime[6]);}
      else if((10 + timeSegment) % 10 == 7) {stroke(colorTime[7]);}
      else if((10 + timeSegment) % 10 == 8) {stroke(colorTime[8]);}
      else if((10 + timeSegment) % 10 == 9) {stroke(colorTime[9]);}
    arc(cenX, cenY, radiusClocHand, radiusClocHand, (radians(radStart) + con) - HALF_PI, (radians(radEnd) + con) - HALF_PI);
  }
  
  void nextClockHand5Colors() {
    strokeWeight(timeWeight);
    strokeCap(SQUARE);
    noFill();
    float con = timeSegment * timeIndex;
    if ((5 + timeSegment) % 5 == 0) {stroke(colorTime[0]);} 
      else if((5 + timeSegment) % 5 == 1) {stroke(colorTime[3]);}
      else if((5 + timeSegment) % 5 == 2) {stroke(colorTime[5]);}
      else if((5 + timeSegment) % 5 == 3) {stroke(colorTime[7]);}
      else if((5 + timeSegment) % 5 == 4) {stroke(colorTime[9]);}
    arc(cenX, cenY, radiusClocHand, radiusClocHand, (radians(radStart) + con) - HALF_PI, (radians(radEnd) + con) - HALF_PI);
  }
  
void nextClockHand2Colors() {
    strokeWeight(timeWeight);
    strokeCap(SQUARE);
    noFill();
    float con = timeSegment * timeIndex;
    if ((5 + timeSegment) % 5 == 0) {stroke(colorTime[9]);} 
      else {stroke(colorTime[0]);}
    arc(cenX, cenY, radiusClocHand, radiusClocHand, (radians(radStart) + con) - HALF_PI, (radians(radEnd) + con) - HALF_PI);
  }  
  
}
