#include <LiquidCrystal.h>
LiquidCrystal lcd(2, 3, 9, 10, 11, 12);

//byte flag;
int i;
double temp_02;

void setup()
{
//  flag = 0;
  Serial.begin(9600);
  lcd.begin(2, 16);
}

double temp_sensor()
{
  int t = analogRead(0);
  double temp = -17.02 + 0.70*t - 0.0034*t*t + 0.0000069*t*t*t;
  return temp;
}

void lcd_display()
{
  lcd.home();
  lcd.print("temp: ");
  lcd.setCursor(6, 0);
  lcd.print(temp_02);
}

int check()
{
  if(temp_02 >= 25)
  {
/*    if(flag == 0)
    {
      flag = 1;
      tone(5, 500, 700);
    }*/
    return 0;
  }
  if((temp_02 < 25) && (temp_02 > 23))
  {
    return 1;
  }
  if(temp_02 <= 23)
  {
    return 2;
  }
}

void loop()
{
  temp_02 = temp_sensor();
  lcd_display();
  i = check();
//  flag = 0;
  switch(i)
  {
    case 0:
    {
      lcd.setCursor(0, 1);
      lcd.print("visoko nivo      ");
//      flag = 0;
      tone(5, 500, 700);
      break;
    }
    case 1:
    {
      lcd.setCursor(0, 1);
      lcd.print("nivo            ");
      break;
    }
    case 2:
    {
      lcd.setCursor(0, 1);
      lcd.print("nisko nivo      ");
      break;
    }
  }
}
