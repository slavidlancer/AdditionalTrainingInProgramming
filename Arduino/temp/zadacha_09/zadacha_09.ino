byte i, j, k;
byte seven_segment_digits[10][7] = {{1, 1, 1, 1, 1, 1, 0},  //0
                                    {0, 1, 1, 0, 0, 0, 0},  //1
                                    {1, 1, 0, 1, 1, 0, 1},  //2
                                    {1, 1, 1, 1, 0, 0, 1},  //3
                                    {0, 1, 1, 0, 0, 1, 1},  //4
                                    {1, 0, 1, 1, 0, 1, 1},  //5
                                    {1, 0, 1, 1, 1, 1, 1},  //6
                                    {1, 1, 1, 0, 0, 0, 0},  //7
                                    {1, 1, 1, 1, 1, 1, 1},  //8
                                    {1, 1, 1, 1, 0, 1, 1}};  //9


void setup()
{
  for (i = 2; i <= 9; i++)
  {
    pinMode(i, OUTPUT);
  }

  digitalWrite(9, 0);
}


void loop()
{
  for (i = 0; i < 10; i++)
  {
    k = 2;

    for (j = 0; j < 7; j++)
    {
      digitalWrite(k, seven_segment_digits[i][j]);

      k++;
    }

    wait_ms(2000);
  }
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while ((millis()-t) <= input_ms)
  {
  }
}
