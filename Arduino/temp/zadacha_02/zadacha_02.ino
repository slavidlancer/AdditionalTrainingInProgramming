boolean flag;
byte i;


void setup()
{
  pinMode(3, OUTPUT);
  pinMode(5, INPUT);

  flag = 0;
}


void loop()
{
  digitalWrite(3, LOW);

  if (digitalRead(5) == HIGH)
  {
    flag = 1;
  }
  
  if ((digitalRead(5) == LOW) && flag)
  {
    flag = 0;

    digitalWrite(3, HIGH);

    wait_ms(1000);

    for (i = 255; i >= 0; i--)
    {
      analogWrite(3, i);

      wait_ms(10);
      //delay(10);
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
