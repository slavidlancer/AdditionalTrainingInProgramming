#include <LiquidCrystal.h>
LiquidCrystal lcd(2, 3, 9, 10, 11, 12);

byte flag_01;
byte flag_02;
int p_01;
int p_02;
int br;

void setup()
{
  lcd.begin(2, 16);
  flag_01 = 0;
  flag_02 = 0;
  br = 0;
}

void loop()
{
  lcd.home();
  lcd.print("passed:");
  lcd.setCursor(0, 1);
  p_01 = digitalRead(7);
  p_02 = digitalRead(8);
  if((digitalRead(8) == 0) && (flag_01 == 1) && (digitalRead(7) == 1))
  {
    br++;
    flag_01 = 0;
    flag_01 = 0;
  }
  if((p_02 == 0) && (flag_01 == 0) && (p_01 == 1))
  {
    flag_02 = 1;
  }
  if((p_01 == 0) && (flag_02 == 1) && (p_02 == 1))
  {
    br--;
    flag_01 = 0;
    flag_01 = 0;
  }
  if((p_01 == 0) && (flag_02 == 0) && (p_02 == 1))
  {
    flag_01 = 1;
  }
/*  if(br < 0)
  {
    lcd.setCursor(5, 1);
    lcd.print("error");
  }
  else*/
//  {
    lcd.print(br);
    delay(200);
//  }
  lcd.setCursor(13, 1);
  lcd.print(p_01);
  lcd.setCursor(15, 1);
  lcd.print(p_02);
}
