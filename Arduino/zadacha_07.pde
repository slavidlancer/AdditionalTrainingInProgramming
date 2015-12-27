#include <LiquidCrystal.h>
LiquidCrystal lcd(2, 3, 9, 10, 11, 12);

byte flag_01;
byte flag_02;
byte flag_03;
byte flag_alarm;
int i, j;

void setup()
{
  lcd.begin(2, 16);
  flag_01 = 0;
  flag_02 = 0;
  flag_03 = 0;
  flag_alarm = 0;
  i = -1;
  j = 0;
}

void check_mode(int i_02)
{
  switch(i_02)
  {
    case 0:
    {
      lcd.print("armed           ");
    }
    case 1:
    {
      lcd.print("disarmed        ");
    }
    case 2:
    {
      lcd.print("test            ");
    }
  }
}

void loop()
{
  if((digitalRead(6) == LOW))
  {
    switch(i)
    {
      case 0:
      {
        flag_03 = 1;
        break;
      }
      case 1:
      {
        flag_03 = 0;
        break;
      }
      case 2:
      {
        tone(5, 500, 700);
        break;
      }
    }
  }
  if(digitalRead(8) == HIGH)
  {
    flag_02 = 0;
  }
  if((digitalRead(8) == LOW) && (flag_02 == 0))
  {
    flag_02 = 1;
    i++;
    if(i > 2)
    {
      i = 0;
    }
    check_mode(i);
  }
  if((digitalRead(4) == LOW) && (flag_03 == 1))
  {
    tone(5, 500);
  }
  if(flag_03 == 0)
  {
    noTone(5);
  }
  lcd.home();
  lcd.print("mode:");
  lcd.setCursor(0, 1);
}
