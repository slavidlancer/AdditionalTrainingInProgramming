#include <LiquidCrystal.h>


boolean flag_alarm, flag_but_enter, flag_but_menu;
byte i;

LiquidCrystal lcd(2, 3, 9, 10, 11, 12);


void setup()
{
  pinMode(4, INPUT);
  pinMode(6, INPUT);
  pinMode(8, INPUT);

  lcd.begin(16, 2);

  i = -1;
  flag_alarm = 0;
  flag_but_enter = 0;
  flag_but_menu = 0;
}


void loop()
{
  if (digitalRead(8) == HIGH)
  {
    flag_but_menu = 1;
  }

  if ((digitalRead(8) == LOW) && flag_but_menu)
  {
    flag_but_menu = 0;

    i++;

    if (i > 2)
    {
      i = 0;
    }

    check_mode(i);
  }

  if (digitalRead(6) == HIGH)
  {
    flag_but_enter = 1;
  }

  if ((digitalRead(6) == LOW) && flag_but_enter)
  {
    flag_but_enter = 0;

    switch (i)
    {
      case 0:
      {
        flag_alarm = 1;

        break;
      }

      case 1:
      {
        flag_alarm = 0;

        break;
      }

      case 2:
      {
        tone(5, 500, 1000);

        break;
      }
    }
  }

  if ((digitalRead(4) == LOW) && flag_alarm)
  {
    tone(5, 500);
  }
  
  if (!(flag_alarm))
  {
    noTone(5);
  }

  lcd.home();
  lcd.print("mode:");
  lcd.setCursor(0, 1);
}


void check_mode(int i_02)
{
  switch (i_02)
  {
    case 0:
    {
      lcd.print("armed           ");

      //break;
    }

    case 1:
    {
      lcd.print("disarmed        ");

      //break;
    }

    case 2:
    {
      lcd.print("test            ");

      //break;
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
