class HourHand{

int hourWeight;
float hourRadius;
int hourColor;
float hourSegment;
int cenX;
int cenY;

HourHand (int tempCenX, int tempCenY, float tempHourSegment, float tempHourRadius, int tempHourColor, int tempHourWeight)
{
  cenX = tempCenX;
  cenY = tempCenY;
hourSegment = tempHourSegment;
hourRadius = tempHourRadius;
hourColor = tempHourColor;
hourWeight = tempHourWeight;
}

void startHourHand() {
stroke(hourColor);
strokeWeight(hourWeight);
for(int i = 0; i <= hourSegment; i++) {
  
line(cenX + cos(i) * (hourRadius * 0.7), cenY + sin(i) * (hourRadius * 0.7), cx + cos(i) * hourRadius, cenY + sin(i) * hourRadius);
}
}

void nextHourHand() {
  stroke(hourColor);
  strokeWeight(hourWeight);
line(cenX + cos(hourSegment) * (hourRadius * 0.7), cenY + sin(hourSegment) * (hourRadius * 0.7), cx + cos(hourSegment) * hourRadius, cenY + sin(hourSegment) * hourRadius);
}
}
