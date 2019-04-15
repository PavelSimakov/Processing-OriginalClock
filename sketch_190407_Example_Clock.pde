PFont bigFont;
PFont smallFont;
PFont middleFont;
int hour = hour();
float hourWorking;
int sec = second();
int min = minute();
float secLine = map(second(), 0, 59, 35, 670);
float minLine = map(minute() + norm(second(), 0, 59), 0, 59, 35, 670);
String[] minScale = {"0", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55", "60"};
String[] hourScale = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"};

void setup() {
size(700,370);
smooth();
background(0);

middleFont = loadFont("DSCrystal-48.vlw");
textFont(middleFont, 30);
fill(#00FFF0);
for (int i = 0; i <= 12; i++) {
float x = lerp(25, 655, i / 12.0);
text(minScale[i], x, 130);
}
for (int i = 0; i <= 12; i++) {
float x = lerp(25, 655, i / 12.0);
text(hourScale[i], x, 250);
}

fill(#87FF00);
rect(30, 29, 646, 61);

fill(#005FFF);
rect(30, 149, 646, 61);

fill(#FF00EF);
rect(30, 269, 646, 61);

for(int i = 35; i <= secLine; i++){
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(i, 31, i, 89);
}


for(int i = 35; i <= minLine; i++){
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(i, 151, i, 209);
}
if(hour >= 0 & hour <= 11) {
 hourWorking = map(hour() + norm(minute(), 0, 59), 0, 12, 30, 670);
}
else if(hour >= 12 & hour <= 23) {
hourWorking = map(hour() + norm(minute(), 0, 59), 12, 24, 30, 670);
}
for(int i = 35; i <= hourWorking; i++){
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(i, 271, i, 329);
}
}

void draw() {
  
 secLine = map(second(), 0, 59, 35, 670); 
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(secLine, 31, secLine, 89);

sec = second();
if(sec == 59) {
  noStroke();
fill(#87FF00);
rect(30, 29, 646, 61);
}

minLine = map(minute() + norm(second(), 0, 59), 0, 59, 35, 670);
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(minLine, 151, minLine, 209);

min = minute();
if(min == 59 & sec == 59) {
  noStroke();
fill(#005FFF);
rect(30, 119, 646, 61);
}
if(hour >=0 & hour <=11) {
 hourWorking = map(hour() + norm(minute(), 0, 59), 0, 12, 60, 640);
}
else if(hour >=12 & hour <=23) {
hourWorking = map(hour() + norm(minute(), 0, 59), 12, 24, 60, 640);
}
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(hourWorking, 271, hourWorking, 329);
//println( "секунды: " + sec + "; " + "минуты: " + min + "; " + "часы: " + hourWorking);
}
