void setup()
{
  Serial.begin(9600);
}

void loop()
{
  int t = analogRead(2);
  double temp = -17.02 + 0.70*t - 0.0034*t*t + 0.0000069*t*t*t;
  Serial.println(temp);
  delay(1000);
}
