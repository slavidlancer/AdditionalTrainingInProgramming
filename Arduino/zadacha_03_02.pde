void setup()
{
  pinMode(3, OUTPUT);
  pinMode(6, OUTPUT);  
  pinMode(5, INPUT);
}

void loop()
{
  int i, j;
  for(i = 255; i >= 0; i--)
  {
    analogWrite(3, i);
    delay(10);
    j = 255 - i;
    analogWrite(6, j);
    delay(10);
  }
  for(i = 0; i <= 255; i++)
  {
    analogWrite(3, i);
    delay(10);
    j = 255 - i;
    analogWrite(6, j);
    delay(10);
  }
}
