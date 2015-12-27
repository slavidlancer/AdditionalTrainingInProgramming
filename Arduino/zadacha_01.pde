void setup()
{
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
}

void loop()
{
  long int t = millis();
  digitalWrite(2, HIGH);
  while((millis() - t) <= 2000)
  { 
  }
  digitalWrite(2, LOW);
  t = millis();  
  while((millis() - t) <= 2000)
  { 
  }
/*
    digitalWrite(2, HIGH);
    digitalWrite(3, HIGH);
    digitalWrite(2, LOW);
    digitalWrite(3, HIGH);
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
*/
}
