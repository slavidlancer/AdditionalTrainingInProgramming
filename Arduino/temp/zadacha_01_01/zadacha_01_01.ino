//unsigned long int t;


void setup()
{
  pinMode(2, OUTPUT); //green
}


void loop()
{
  digitalWrite(2, HIGH);

  delay(500);

  digitalWrite(2, LOW);

  delay(500);


/*  t = millis();

  digitalWrite(2, HIGH);

  while ((millis()-t) <= 500)
  {
  }

  digitalWrite(2, LOW);

  while ((millis()-t) <= 500)
  {
  }*/
}
