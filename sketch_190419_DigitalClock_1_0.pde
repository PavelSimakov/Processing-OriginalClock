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

void setup() {

  size(700,300);
  background(0);
  smooth();
  smallFont = loadFont("Dyuthi-48.vlw");
  bigFont = loadFont("Dyuthi-200.vlw");
}

void draw() {
smooth();
background(0);

textFont(bigFont, 200);
  fill(#00FFFF);
  
  text(hourDial[hour()],30,180);
  
  if(second() % 2 == 0) { fill(0);}
  else { fill(#00FFFF);}
  text(":", 225, 180);
  
  fill(#00FFFF);
  text(minutesDial[minute()],300, 180);
  
  ellipseMode(CENTER);
 ellipse(600, 90, 80, 80);
  
textFont(smallFont,70);
 text(dayDial[day()], 50, 270);
 
 text(monthDial[month() - 1], 150, 270);
}
