#include <LiquidCrystal.h>


byte i;
double temperature_02;

LiquidCrystal lcd(2, 3, 9, 10, 11, 12);


void setup()
{
  lcd.begin(16, 2);

  temperature_02 = 0;
}


void loop()
{
  temperature_02 = temperature_sensor();
  lcd_display();
  i = check();

  switch (i)
  {
    case 0:
    {
      lcd.setCursor(0, 1);
      lcd.print("high level");

      tone(5, 500, 1000);

      wait_ms(1000);

      break;
    }

    case 1:
    {
      lcd.setCursor(0, 1);
      lcd.print("medium level");

      wait_ms(1000);

      break;
    }

    case 2:
    {
      lcd.setCursor(0, 1);
      lcd.print("low level");

      wait_ms(1000);

      break;
    }
  }

  wait_ms(500);
}


double temperature_sensor()
{
  int t = analogRead(A0);
  double temperature = -17.02+0.70*t-0.0034*t*t+0.0000069*t*t*t;


  return temperature;
}


void lcd_display()
{
  lcd.home();
  lcd.print("temp: ");
  lcd.setCursor(7, 0);
  lcd.print(temperature_02);
}


int check()
{
  if (temperature_02 >= 25)
  {
    return 0;
  }

  if ((temperature_02 > 23) && (temperature_02 < 25))
  {
    return 1;
  }

  if (temperature_02 <= 23)
  {
    return 2;
  }
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while ((millis()-t) <= input_ms)
  {
  }
}
