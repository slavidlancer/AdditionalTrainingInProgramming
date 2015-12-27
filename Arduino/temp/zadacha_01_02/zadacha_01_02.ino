//unsigned long int t;


void setup()
{
  pinMode(2, OUTPUT); //red
  pinMode(3, OUTPUT); //green
}


void loop()
{
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);

  delay(1000);

  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);

  delay(1000);


/*  t = millis();

  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);

  while ((millis()-t) <= 1000)
  {
  }

  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);

  while ((millis()-t) <= 1000)
  {
  }*/
}
