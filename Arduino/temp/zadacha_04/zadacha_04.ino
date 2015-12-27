boolean flag_but, flag_menu;
byte i, j;


void setup()
{
  for (i = 1; i <= 13; i++)
  {
    pinMode(i, OUTPUT);
  }

  pinMode(0, INPUT);

  flag_but = 0;
  flag_menu = 0;

  randomSeed(millis());
}


void loop()
{
  if (digitalRead(0) == LOW)
  {
    flag_but = 1;
  }

  if ((digitalRead(0) == HIGH) && flag_but)
  {
    flag_but = 0;
    flag_menu++;

    if (flag_menu > 5)
    {
      flag_menu = 0;
    }
  }

  switch (flag_menu)
  {
    case 0:
    {
      even_odd();

      break;
    }

    case 1:
    {
      round_light();

      break;
    }

    case 2:
    {
      gradually_on_off();

      break;
    }

    case 3:
    {
      random_blink();

      break;
    }

    case 4:
    {
      led_on();

      break;
    }

    case 5:
    {
      led_off();

      break;
    }
  }
}


void even_odd()
{
  for (i = 2; i <= 12; i = i + 2)
  {
    digitalWrite(i, LOW);
  }

  for (i = 1; i <= 13; i = i + 2)
  {
    digitalWrite(i, HIGH);
  }

  wait_ms(500);

  for (i = 1; i <= 13; i = i + 2)
  {
    digitalWrite(i, LOW);
  }

  for (i = 2; i <= 12; i = i + 2)
  {
    digitalWrite(i, HIGH);
  }

  wait_ms(500);
}


void round_light()
{
  for (i = 1; i <= 13; i++)
  {
    if (i > 1)
    {
      digitalWrite(i-1, LOW);

      wait_ms(35);

      digitalWrite(i, HIGH);
    }

    if (i == 1)
    {
      digitalWrite(i, HIGH);
    }

    wait_ms(35);
  }

  digitalWrite(13, LOW);

  wait_ms(35);
}


void gradually_on_off()
{
  for (i = 1; i <= 13; i++)
  {
    digitalWrite(i, HIGH);

    wait_ms(35);
  }

  wait_ms(35);

  for (i = 13; i >= 1; i--)
  {
    digitalWrite(i, LOW);

    wait_ms(35);
  }

  wait_ms(35);
}


void random_blink()
{
  unsigned long int random_number = random(1, 14);


  led_off();

  digitalWrite(random_number, HIGH);

  wait_ms(90);

  led_off();
}


void led_on()
{
  for (i = 1; i <= 13; i++)
  {
    digitalWrite(i, HIGH);
  }
}


void led_off()
{
  for (i = 1; i <= 13; i++)
  {
    digitalWrite(i, LOW);
  }  
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while ((millis()-t) <= input_ms)
  {
  }
}
