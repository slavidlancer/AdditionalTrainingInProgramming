int flag;
int flag_but;
int i;
int j;

void setup()
{
  flag = 0;
  flag_but = 0;
  randomSeed(millis());
  for(i = 1; i <= 13; i++)
  {
    pinMode(i, OUTPUT);
  }
  pinMode(0, INPUT);
}

void led_on()
{
  for(i = 1; i <= 13; i++)
  {
    digitalWrite(i, HIGH);
  }
}

void led_off()
{
  for(i = 1; i <= 13; i++)
  {
    digitalWrite(i, LOW);
  }
}

void chetno_nechetno()
{
  for(i = 2; i <= 13; i = i + 2)
  {
    digitalWrite(i, LOW);
  }
  for(i = 1; i <= 13; i = i + 2)
  {
    digitalWrite(i, HIGH);
  }
  wait_ms(500);
  for(i = 1; i <= 13; i = i + 2)
  {
    digitalWrite(i, LOW);
  }
  for(i = 2; i <= 13; i = i + 2)
  {
    digitalWrite(i, HIGH);
  }
  wait_ms(500);
}

void svetlina_krag()
{
  j = 1;
  for(i = 1; i <= 13; i++)
  {
    digitalWrite(i, HIGH);
    digitalWrite(j, LOW);
    wait_ms(50);
    digitalWrite(i, LOW);
    j = i - 1;
  }
}

void postepenno_gs()
{
  for(i = 2; i <= 13; i++)
  {
    digitalWrite(i, HIGH);
    wait_ms(35);
  }
  for(i = 2; i <= 13; i++)
  {
    digitalWrite(i, LOW);
    wait_ms(35);
  }
}

void sluchaino_migane()
{
  long int rand_num;
  rand_num = random(1, 14);
  led_off();
  digitalWrite(rand_num, HIGH);
  delay(90);
  led_off();
}

void wait_ms(int input_ms)
{
  long int t = millis();
  while((millis() - t) <= input_ms)
  {
  }
}

void loop()
{
  if(digitalRead(0) == HIGH)
  {
    flag_but = 0;
  }
  if((digitalRead(0) == LOW) && (flag_but == 0))
  {
    flag_but = 1;
    flag++;
    if(flag > 3)
    {
      flag = 0;
    }
  }
  switch(flag)
  {
    case 0:
    {
      chetno_nechetno();
      break;
    }
    case 1:
    {
      svetlina_krag();
      break;
    }
    case 2:
    {
      postepenno_gs();
      break;
    }
    case 3:
    {
      sluchaino_migane();
      break;
    }
  }
}
