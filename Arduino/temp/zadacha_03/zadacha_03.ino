boolean flag;
byte i, j;


void setup()
{
  pinMode(3, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(5, INPUT);

  flag = 0;
}


void loop()
{
  digitalWrite(3, LOW);
  digitalWrite(6, LOW);

  if (digitalRead(5) == HIGH)
  {
    flag = 1;
  }

  if ((digitalRead(5) == LOW) && flag)
  {
    flag = 0;

    for (i = 0; i <= 255; i++)
    {
      analogWrite(3, i);

      wait_ms(10);

      j = 255-i;

      analogWrite(6, j);

      wait_ms(10);
    }

    for (i = 255; i <= 0; i--)
    {
      analogWrite(3, i);

      wait_ms(10);

      j = 255-i;

      analogWrite(6, j);

      wait_ms(10);
    }
  }  
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while ((millis()-t) <= input_ms)
  {
  }
}
