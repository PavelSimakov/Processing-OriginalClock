int sec;
int min;
int hour;
float radius;

void setup() {
  size(500, 500);
  background(0);
  smooth();
  translate(height / 2, width / 2);
  radius = min(height / 2, width / 2);

  stroke(#460000);
  strokeWeight(35);
  noFill();
  ellipse(0, 0, radius * 1.8, radius * 1.8);

  sec = second();
  strokeCap(SQUARE);
  strokeWeight(25);
  noFill();
  for (int i = 0; i <= sec; i ++) {
    float con = i * (PI / 30);
    if ((5 + i) % 5 == 0) {
      stroke(255, 0, 0);
    } else {
      stroke(255);
    }
    arc(0, 0, radius * 1.8, radius * 1.8, (radians(0.5) + con) - HALF_PI, (radians(5.5) + con) - HALF_PI);
  }

  stroke(#460000);
  strokeWeight(70);
  noFill();
  ellipse(0, 0, radius * 1.4, radius * 1.4);

  min = minute();
  strokeWeight(60);
  for (int i = 0; i <= min; i ++) {
    float con = i * (PI / 30);
    if ((5 + i) % 5 == 0) {
      stroke(255, 0, 0);
    } else {
      stroke(255);
    }
    arc(0, 0, radius * 1.4, radius * 1.4, (radians(0.5) + con) - HALF_PI, (radians(5.5) + con) - HALF_PI);
  }

  stroke(#460000);
  strokeWeight(105);
  noFill();
  ellipse(0, 0, radius * 0.7, radius * 0.7);

  hour = hour();
  strokeWeight(90);
  if (hour >= 0 & hour <=12) {
    for (int i = 1; i <= hour; i ++) {
      float con = i * (PI / 6);
      stroke(255);
      arc(0, 0, radius * 0.7, radius * 0.7, (radians(0.5) + con) - radians(120), (radians(29.5) + con) - radians(120));
    }
  }
  if (hour >= 12 & hour <= 23) {
    for (int i = 13; i <= hour; i ++) {
      float con = i * (PI / 6);
      stroke(255);
      arc(0, 0, radius * 0.7, radius * 0.7, (radians(0.5) + con) - radians(120), (radians(29.5) + con) - radians(120));
    }
  }
}

void draw() {

  translate(height / 2, width / 2);

  sec = second();

  strokeCap(SQUARE);
  strokeWeight(25);
  noFill();
  if ((5 + sec) % 5 == 0) {
    stroke(255, 0, 0);
  } else {
    stroke(255);
  }
  float conSec = sec * (PI / 30);
  arc(0, 0, radius * 1.8, radius * 1.8, (radians(0.5) + conSec) - HALF_PI, (radians(5.5) + conSec) - HALF_PI);

  min = minute();
  strokeWeight(60);
  if ((5 + min) % 5 == 0) {
    stroke(255, 0, 0);
  } else {
    stroke(255);
  }
  float conMin = min * (PI / 30);
  arc(0, 0, radius * 1.4, radius * 1.4, (radians(0.5) + conMin) - HALF_PI, (radians(5.5) + conMin) - HALF_PI);

  hour = hour();
  stroke(255);
  strokeWeight(90);
  float con = hour * (PI / 6);
  arc(0, 0, radius * 0.7, radius * 0.7, (radians(0.5) + con) - radians(120), (radians(29.5) + con) - radians(120));

  if (sec == 0) {
    stroke(#460000);
    strokeWeight(35);
    noFill();
    ellipse(0, 0, radius * 1.8, radius * 1.8);
  }

  if (min == 59 & sec == 59) {
    stroke(#460000);
    strokeWeight(35);
    noFill();
    ellipse(0, 0, radius * 1.4, radius * 1.4);
  }

  if ((hour == 23 | hour == 11) & (min == 59 & sec == 59)) {
    stroke(#460000);
    strokeWeight(105);
    noFill();
    ellipse(0, 0, radius * 0.7, radius * 0.7);
  }

  stroke(255, 0, 0);
  strokeCap(SQUARE);
  strokeWeight(25);
  noFill();
  arc(0, 0, radius * 1.8, radius * 1.8, radians(0.5) - HALF_PI, radians(5.5) - HALF_PI);
}
