int heightWindow = 500;
int widthWindow = 500;
int sec;
int min;
float hour;
int radius = min(heightWindow / 2, widthWindow / 2);
float secIndex = radians(6);
float minIndex = radians(6);
int cx = heightWindow / 2;
int cy = widthWindow / 2;
float secRadius = 0.3;
float secStart = -3.0;
float secEnd = 3.0;
float secWidth = 70;
int[] tenColors = {#FFFFFF, #E3FFFD, #C6FFFC, #A7FFFA, #8EFFF8, #6FFFF7, #52FFF5, #36FFF3, #17FFF1, #12FFF1};

float minRadius = 1.1;
float minWidth = 30;

float hourRadius = radius * 0.9;
int hourWeight = 2;

ClocksHand secHand;
ClocksHand minHand;
HourHand hourHand;


void setup() {
size(500, 500);
smooth();
background(0);

sec = second();
secHand = new ClocksHand(cx, cy, sec, secIndex, radius * secRadius, secStart, secEnd, tenColors, secWidth);
secHand.clockHandBackGround();
secHand.startClockHand10Colors();

min = minute();
minHand = new ClocksHand(cx, cy, min, minIndex, radius * minRadius, secStart, secEnd, tenColors, minWidth);
minHand.clockHandBackGround();
minHand.startClockHand10Colors();

hour = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
hourHand = new HourHand (cx, cy, hour, hourRadius, tenColors[9], hourWeight);
hourHand.startHourHand();
}

void draw() {
 smooth();
 sec = second();
 secHand = new ClocksHand(cx, cy, sec, secIndex, radius * secRadius, secStart, secEnd, tenColors, secWidth);
secHand.nextClockHand10Colors();
if(sec == 59) {
secHand.clockHandBackGround();
}

min = minute();
minHand = new ClocksHand(cx, cy, min, minIndex, radius * minRadius, secStart, secEnd, tenColors, minWidth);
minHand.nextClockHand10Colors();
if(min == 59 & sec == 59) {
minHand.clockHandBackGround();
}

hour = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
hourHand = new HourHand (cx, cy, hour, hourRadius, tenColors[9], hourWeight);
hourHand.nextHourHand();
}
