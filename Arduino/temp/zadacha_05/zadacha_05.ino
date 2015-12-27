void setup()
{
  Serial.begin(9600);
}


void loop()
{
  int t = analogRead(A2);
  double temperature = -17.02+0.70*t-0.0034*t*t+0.0000069*t*t*t;


  Serial.println(temperature);

  wait_ms(1000);
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while ((millis()-t) <= input_ms)
  {
  }
}
