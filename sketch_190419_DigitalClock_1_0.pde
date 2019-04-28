PFont bigFont;
PFont smallFont;
String[] minutesDial = {"00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20",
"21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45",
"46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
String[] hourDial = {"00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20",
"21","22","23"};
String[] dayDial = {"01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20",
"21","22","23","24","25","26","27","28","29","30","31"};
String[] monthDial = {"January","February","Marz","April","May","Juny","July","August","September","October","November","December"};
 int cenSecX;
 int cenSecY;
 float secRadius;
 float secWeight;
 int[] secColor = {#D8FFFD,#C1FFFB,#A7FFFA,#8EFFF8,#76FFF7,#62FFF6,#46FFF4,#2EFFF3,#1AFFF2,#00FFF0};
 
 SecondAndMinutClocksHand secondCircle;

void setup() {

  size(700,300);
  background(0);
  smooth();
  smallFont = loadFont("DSCrystal-48.vlw");
  bigFont = loadFont("digitalk-mono-200.vlw");
  int sec = second();
 frameRate(1);
  
  cenSecX = 600;
 cenSecY = 120;
 secRadius = 80.0;
 secWeight = secRadius * 0.8;
  ellipseMode(CENTER);
// ellipse(cenSecX, cenSecY, secRadius * 0.8 , secRadius * 0.8 );
 secondCircle = new SecondAndMinutClocksHand(cenSecX, cenSecY, sec, secRadius, secColor, secWeight);
 secondCircle.clockHandBackGround();
 secondCircle.startClockHand10Colors();
 
}

void draw() {
smooth();
//background(0);

int sec = second();

textFont(bigFont, 200);
  
  fill(0);
  noStroke();
  rect(0, 0, 500, 300);
  
  fill(#00FFFF);
  text(hourDial[hour()],30,180);
  
  if(sec % 2 == 0) { fill(0);}
  else { fill(#00FFFF);}
  text(":", 215, 180);
  
  fill(#00FFFF);
  text(minutesDial[minute()],300, 180);
  
textFont(smallFont,70);
 text(dayDial[day()], 50, 270);
 
 text(monthDial[month() - 1], 150, 270);
 
 cenSecX = 600;
 cenSecY = 120;
 secRadius = 80;
 secWeight = secRadius * 0.8;
  ellipseMode(CENTER);
 secondCircle = new SecondAndMinutClocksHand(cenSecX, cenSecY, sec, secRadius, secColor, secWeight);
 secondCircle.nextClockHand10Colors();
 
 if(sec == 59) {
 secondCircle.clockHandBackGround();
 }
 
}
