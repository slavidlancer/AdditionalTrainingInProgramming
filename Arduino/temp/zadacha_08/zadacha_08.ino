#include <LiquidCrystal.h>


boolean flag_p1, flag_p2;
int br, p1, p2;

LiquidCrystal lcd(2, 3, 9, 10, 11, 12);


void setup()
{
  pinMode(7, INPUT);
  pinMode(8, INPUT);

  lcd.begin(16, 2);

  br = 0;
  p1 = 0;
  p2 = 0;
}


void loop()
{
  lcd.home();
  lcd.print("passed:");
  lcd.setCursor(0, 1);

  p1 = digitalRead(7);
  p2 = digitalRead(8);

  if (p1 == LOW)
  {
    flag_p1 = 1;
  }

  if ((p1 == HIGH) && flag_p1)
  {
    flag_p1 = 0;

    wait_ms(500);

    if (p2 == LOW)
    {
      flag_p2 = 1;
    }

    if ((p2 == HIGH) && flag_p2)
    {
      flag_p2 = 0;
      br++;

      wait_ms(500);
    }
  }

  wait_ms(1000);

  if (p2 == LOW)
  {
    flag_p2 = 1;
  }

  if ((p2 == HIGH) && flag_p2)
  {
    flag_p2 = 0;

    wait_ms(500);

    if (p1 == LOW)
    {
      flag_p1 = 1;
    }

    if ((p1 == HIGH) && flag_p1)
    {
      flag_p1 = 0;
      br--;

      wait_ms(500);
    }
  }


/*  if ((p2 == LOW) && (p1 == HIGH) && flag_p1)
  {
    flag_p1 = 0;
    flag_p2 = 0;
    br++;
  }

  if ((p2 == LOW) && (p1 == HIGH) && (!(flag_p1)))
  {
    flag_p2 = 1;
  }

  if ((p1 == LOW) && (p2 == HIGH) && flag_p2)
  {
    flag_p1 = 0;
    flag_p2 = 0;
    br--;
  }

  if ((p1 == LOW) && (p2 == HIGH) && (!(flag_p2)))
  {
    flag_p1 = 1;
  }*/


  if (br < 0)
  {
    lcd.print("error: ");
    lcd.setCursor(8, 1);
  }

  lcd.print(br);

  wait_ms(1000);

  lcd.setCursor(13, 1);
  lcd.print(p1);
  lcd.setCursor(15, 1);
  lcd.print(p2);
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while ((millis()-t) <= input_ms)
  {
  }
}
