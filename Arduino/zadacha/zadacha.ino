boolean flag_p1, flag_p2;
byte i, j, k, br, bright;
byte seg_ind[10][7]={
  {1, 1, 1, 1, 1, 1, 0},  //0
  {0, 1, 1, 0, 0, 0, 0},  //1
  {1, 1, 0, 1, 1, 0, 1},  //2
  {1, 1, 1, 1, 0, 0, 0},  //3
  {0, 1, 1, 0, 0, 1, 1},  //4
  {1, 0, 1, 1, 0, 1, 0},  //5
  {1, 0, 1, 1, 1, 1, 1},  //6
  {1, 1, 1, 0, 0, 0, 0},  //7
  {1, 1, 1, 1, 1, 1, 1},  //8
  {1, 1, 1, 1, 0, 1, 1}  //9
};


void setup()
{
  for (i = 2; i < 13; i++)
  {
    pinMode(i, OUTPUT);
  }

  pinMode(A0, INPUT);
  pinMode(A1, INPUT);

  digitalWrite(9, LOW);

  br = 0;
  flag_p1 = false;
  flag_p2 = false;
}


void loop()
{
  count_in();

  wait_ms(2000);

  count_out();

  show_led(br);

  if ((br >= 0) && (br < 10))
  {
    show_seg_ind(br);

    if (br == 9)
    {
      tone(12, 2500);  //0.0004
    }
    else
    {
      noTone(12);
    }
  }

  if (br < 0)
  {
    show_seg_ind(-1);
  }
}


void count_in()
{
  if (digitalRead(A0) == LOW)  //analogRead(A0)
  {
    flag_p1 = true;
  }

  if ((digitalRead(A0) == HIGH) && flag_p1)  //analogRead(A0)
  {
    flag_p1 = false;

    wait_ms(800);

    if (digitalRead(A1) == LOW)  //analogRead(A1)
    {
      flag_p2 = true;
    }

    if ((digitalRead(A1) == HIGH) && flag_p2)  //analogRead(A1)
    {
      flag_p2 = false;
      br++;
    }
  }
}


void count_out()
{
  if (digitalRead(A1) == LOW) //analogRead(A1)
  {
    flag_p2 = true;
  }

  if ((digitalRead(A1) == HIGH) && flag_p2)  //analogRead(A1)
  {
    flag_p2 = false;

    wait_ms(800);

    if (digitalRead(A0) == LOW)  //analogRead(A0)
    {
      flag_p1 = true;
    }

    if ((digitalRead(A0) == HIGH) && flag_p1)  //analogRead(A0)
    {
      flag_p1 = false;
      br--;
    }
  }
}


void show_led(byte count)
{
  bright = map(count, 0, 9, 0, 255);


  analogWrite(11, bright);
}


void show_seg_ind(byte segment)
{
  switch (segment)
  {
    case -1:
    {
      digitalWrite(9, HIGH);
    }

    case 0:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 1:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }    
    }

    case 2:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 3:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 4:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 5:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 6:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 7:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 8:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }

    case 9:
    {
      k = 2;
      digitalWrite(9, LOW);

      for (j = 0; j < 7; j++)
      {
        digitalWrite(k, seg_ind[segment][j]);
        k++;
      }
    }
  }
}


void wait_ms(int input_ms)
{
  unsigned long int t = millis();


  while (millis()-t <= input_ms)
  {
  }
}
