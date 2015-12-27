byte i, j;
//unsigned long int t;


void setup()
{
  for (i=2; i<=4; i++)
  {
    pinMode(i, OUTPUT); //green, yellow, red
  }
}


void loop()
{
  for (i=2; i<=4; i++)
  {
    for (j=2; j<=4; j++)
    {
      digitalWrite(j, LOW);
    }

    digitalWrite(i, HIGH);

    if (i == 4)
    {
      delay(1000);
    }
    else
    {
      delay(2000);
    }
  }


/*  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, LOW);
  delay(2000);
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  digitalWrite(4, LOW);
  delay(2000);
  digitalWrite(2, LOW);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  delay(1000);*/


/*  t = millis();

  for (i=2; i<=4; i++)
  {
    for (j=2; j<=4; j++)
    {
      digitalWrite(j, LOW);
    }

    digitalWrite(i, HIGH);

    if (i == 4)
    {
      while ((millis()-t) <= 1000)
      {
      }
    }
    else
    {
      while ((millis()-t) <= 2000)
      {
      }
    }
  }
*/
}
