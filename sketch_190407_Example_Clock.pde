PFont bigFont; // large font size
PFont smallFont; //small font size
PFont middleFont; //average font size
int hour = hour(); // hours
int sec = second(); // seconds
int min = minute(); //minutes
float secWorking = map(second(), 0, 59, 35, 670); //for display second dial
float minWorking = map(minute() + norm(second(), 0, 59), 0, 59, 35, 670);  //for the minute dial
float hourWorking;  //for dial displaying hours
String[] minDial = {"0", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55", "60"}; // for minutes and seconds
String[] hourDial = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"}; // for hours

void setup() {
size(700,370);
smooth();
background(0);

middleFont = loadFont("DSCrystal-48.vlw");
textFont(middleFont, 30);
fill(#00FFF0);
for (int i = 0; i <= 12; i++) {
float x = lerp(25, 655, i / 12.0);
text(minDial[i], x, 130);
}
for (int i = 0; i <= 12; i++) {
float x = lerp(25, 655, i / 12.0);
text(hourDial[i], x, 250);
}

fill(0);
rect(30, 29, 646, 61); //background for seconds

fill(0);
rect(30, 149, 646, 61); //background for minutes

fill(0);
rect(30, 269, 646, 61); //background for hours

for(int i = 35; i <= secWorking; i++){ //dial for the seconds at initial boot
stroke(255);
strokeWeight(10.1);
strokeCap(SQUARE);
line(i, 31, i, 89);
}


for(int i = 35; i <= minWorking; i++){ //dial for the minutes at initial boot
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(i, 151, i, 209);
}
if(hour >= 0 & hour <= 11) {
 hourWorking = map(hour() + norm(minute(), 0, 59), 0, 12, 30, 670); //until noon
}
else if(hour >= 12 & hour <= 23) {
hourWorking = map(hour() + norm(minute(), 0, 59), 12, 24, 30, 670); //in the afternoon
}
for(int i = 35; i <= hourWorking; i++){ //dial for the hours at initial boot
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(i, 271, i, 329);
}
}

void draw() {
  
 secWorking = map(second(), 0, 59, 35, 670); //dial for the seconds
stroke(255);
strokeWeight(10.1);
strokeCap(SQUARE);
line(secWorking, 31, secWorking, 89);

sec = second();
if(sec == 59) {
  noStroke();
fill(0);
rect(30, 29, 646, 61);
}

minWorking = map(minute() + norm(second(), 0, 59), 0, 59, 35, 670); //dial for the minutes
stroke(255);
strokeWeight(10);
strokeCap(SQUARE);
line(minWorking, 151, minWorking, 209);

min = minute();
if(min == 59 & sec == 59) {
  noStroke();
fill(0);
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
hour = hour();
if ((hour == 11 | hour == 23) & min == 59 & sec == 59) {
  noStroke();
fill(0);
rect(30, 269, 646, 61);
}
}
