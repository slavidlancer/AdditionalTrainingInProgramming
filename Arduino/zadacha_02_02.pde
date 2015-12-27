byte flag;
int i;

void setup()
{
  pinMode(3, OUTPUT);
  pinMode(5, INPUT);
  flag = 0;
  i = 0;
}

void loop()
{
  digitalWrite(3, LOW);
  if(digitalRead(5) == HIGH)
  {
    flag = 0;
  }
  if((digitalRead(5) == LOW) && (flag == 0))
  {
    flag = 1;
    digitalWrite(3, HIGH);
    wait_ms(1000);
    for(i = 255; i >= 0; i--)
    {
      analogWrite(3, i);
      delay(10);
    }
  }
}

void wait_ms(int input_ms)
{
  long int t = millis();
  while((millis() - t) <= input_ms)
  {
  }
}
