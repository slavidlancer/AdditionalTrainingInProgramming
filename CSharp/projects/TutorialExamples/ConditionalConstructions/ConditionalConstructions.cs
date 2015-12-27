using System;

namespace ConditionalConstructions
{
    class ConditionalConstructions
    {
        static void Main(string[] args)
        {
            int enterInt = 0;
            double enterDouble = 0;
            string enterString = "";

            int choice = 0;
            int resultParsedInt = 0;

            int points = 0;

            double[] numbers = new double[5];
            double resultParsed = 0;
            double resultParsedDouble = 0;
            double greater = 0;
            double maxNumber = 0;
            double smaller = 0;
            double greaterCheck = 0;
            double greaterCheckTwo = 0;
            double temp = 1;

            int i = 0;
            int checkNumber;

            string str;
            string[] numberNames = new string[5];

            numberNames[0] = "first number";
            numberNames[1] = "second number";
            numberNames[2] = "third number";
            numberNames[3] = "fourth number";
            numberNames[4] = "fifth number";

            bool parseOk = false;


            do
            {
                System.Console.WriteLine("Enter points [1-9]!");
                str = System.Console.ReadLine();

                parseOk = Int32.TryParse(str, out resultParsedInt);

                System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                if (parseOk)
                {
                    points = resultParsedInt;
                }
            }
            while (!parseOk);

            switch (points)
            {
                case 1:
                case 2:
                case 3:
                    {
                        points *= 10;

                        break;
                    }
                case 4:
                case 5:
                case 6:
                    {
                        points *= 100;

                        break;
                    }
                case 7:
                case 8:
                case 9:
                    {
                        points *= 1000;

                        break;
                    }
                default:
                    {
                        System.Console.WriteLine("Error! Poins must be [1 - 9]!");

                        break;
                    }
            }

            System.Console.WriteLine("The points are: " + points);


            do
            {
                System.Console.WriteLine("Enter a choice (1-3)!\n"
                    + "1 for String\t2 for Int\t3 for Double");
                str = System.Console.ReadLine();

                parseOk = Int32.TryParse(str, out resultParsedInt);

                System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                if (parseOk)
                {
                    choice = resultParsedInt;
                }
            }
            while ((choice > 3) || (choice < 1) && (!parseOk));

            switch (choice)
            {
                case 1:
                    {
                        System.Console.WriteLine("Enter a String");
                        enterString = System.Console.ReadLine();

                        enterString = enterString + "*";

                        System.Console.WriteLine(enterString);

                        break;
                    }
                case 2:
                    {
                        do
                        {
                            System.Console.WriteLine("Enter an Int");
                            str = System.Console.ReadLine();

                            parseOk = Int32.TryParse(str, out resultParsedInt);

                            System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                            if (parseOk)
                            {
                                enterInt = resultParsedInt;
                            }
                        }
                        while (!parseOk);

                        enterInt++;

                        System.Console.WriteLine(enterInt);

                        break;
                    }
                case 3:
                    {
                        do
                        {
                            System.Console.WriteLine("Enter a Double");
                            str = System.Console.ReadLine();

                            parseOk = Double.TryParse(str, out resultParsedDouble);

                            System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                            if (parseOk)
                            {
                                enterDouble = resultParsedDouble;
                            }
                        }
                        while (!parseOk);

                        enterDouble++;

                        System.Console.WriteLine(enterDouble);

                        break;
                    }
                default:
                    {
                        System.Console.WriteLine("Error!");

                        break;
                    }
            }



            for (i = 0; i < 5; i++)
            {
                do
                {
                    System.Console.Write("Enter {0} = ", numberNames[i]);
                    str = System.Console.ReadLine();

                    parseOk = Double.TryParse(str, out resultParsed);

                    System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                    if (parseOk)
                    {
                        switch (i)
                        {
                            case 0:
                                {
                                    numbers[0] = resultParsed;

                                    break;
                                }

                            case 1:
                                {
                                    numbers[1] = resultParsed;

                                    break;
                                }

                            case 2:
                                {
                                    numbers[2] = resultParsed;

                                    break;
                                }
                            case 3:
                                {
                                    numbers[3] = resultParsed;

                                    break;
                                }
                            case 4:
                                {
                                    numbers[4] = resultParsed;

                                    break;
                                }
                        }
                    }
                }
                while (!parseOk);
            }

            Console.WriteLine("{0} {1} {2}", numbers[0], numbers[1], numbers[2]);


            if (numbers[0] >= numbers[1])
            {
                if (numbers[0] >= numbers[2])
                {
                    greater = numbers[0];
                }
                else
                {
                    greater = numbers[2];
                }
            }
            else if (numbers[1] >= numbers[2])
            {
                greater = numbers[1];
            }
            else
            {
                greater = numbers[2];
            }

            greaterCheck = Math.Max(numbers[0], numbers[1]);
            greaterCheckTwo = Math.Max(numbers[0], numbers[2]);

            Console.WriteLine("Greater: " + Math.Max(greaterCheck, greaterCheckTwo));
            Console.WriteLine("Greater: " + greater);


            checkNumber = Convert.ToInt32(numbers[2]);

            switch (checkNumber)
            {
                case 0:
                    {
                        Console.WriteLine("Zero");

                        break;
                    }
                case 1:
                    {
                        Console.WriteLine("One.");

                        break;
                    }
                case 2:
                    {
                        Console.WriteLine("Two.");

                        break;
                    }
                case 3:
                    {
                        Console.WriteLine("Three.");

                        break;
                    }
                case 4:
                    {
                        Console.WriteLine("Four.");

                        break;
                    }
                case 5:
                    {
                        Console.WriteLine("Five.");

                        break;
                    }
                case 6:
                    {
                        Console.WriteLine("Six.");

                        break;
                    }
                case 7:
                    {
                        Console.WriteLine("Seven.");

                        break;
                    }
                case 8:
                    {
                        Console.WriteLine("Eight.");

                        break;
                    }
                case 9:
                    {
                        Console.WriteLine("Nine.");

                        break;
                    }
                case 10:
                default:
                    {
                        Console.WriteLine("Other number: 10 - Ten.");

                        break;
                    }
            }


            if (numbers[0] * numbers[1] * numbers[2] > 0)
            {
                Console.WriteLine("The sign is +.");
            }

            else if (numbers[0] * numbers[1] * numbers[2] < 0)
            {
                Console.WriteLine("The sign is -.");
            }
            else if (numbers[0] * numbers[1] * numbers[2] == 0)
            {
                Console.WriteLine("The result is zero.");
            }

            if ((numbers[0] == 0) || (numbers[1] == 0) || (numbers[2] == 0))
            {
                Console.WriteLine("The result is zero.");
            }
            else if (numbers[0] < 0)
            {
                if (numbers[1] < 0)
                {
                    if (numbers[2] > 0)
                    {
                        Console.WriteLine("The sign is +.");
                    }
                    else if (numbers[2] < 0)
                    {
                        Console.WriteLine("The sign is -.");
                    }
                }
                else if (numbers[1] > 0)
                {
                    if (numbers[2] < 0)
                    {
                        Console.WriteLine("The sign is +.");
                    }
                    else if (numbers[2] > 0)
                    {
                        Console.WriteLine("The sign is -.");
                    }
                }
            }
            else if (numbers[0] > 0)
            {
                if (numbers[1] < 0)
                {
                    if (numbers[2] > 0)
                    {
                        Console.WriteLine("The sign is -.");
                    }
                    else if (numbers[2] < 0)
                    {
                        Console.WriteLine("The sign is +.");
                    }
                }
                else if (numbers[1] > 0)
                {
                    if (numbers[2] < 0)
                    {
                        Console.WriteLine("The sign is -.");
                    }
                    else if (numbers[2] > 0)
                    {
                        Console.WriteLine("The sign is +.");
                    }
                }
            }


            if (numbers[0] <= numbers[1])
            {
                if (numbers[0] <= numbers[2])
                {
                    smaller = numbers[0];
                    numbers[0] = numbers[2];
                    numbers[2] = smaller;
                }
                else
                {
                    smaller = numbers[2];
                }
            }
            else if (numbers[1] <= numbers[2])
            {
                smaller = numbers[1];
                numbers[1] = numbers[2];
                numbers[2] = smaller;
            }
            else
            {
                smaller = numbers[2];
            }

            if (numbers[0] < numbers[1])
            {
                smaller = numbers[0];
                numbers[0] = numbers[1];
                numbers[1] = smaller;
            }
            Console.WriteLine("{0} {1} {2}", numbers[0], numbers[1], numbers[2]);


            if (numbers[0] > numbers[1])
            {
                temp = numbers[1];
                numbers[1] = numbers[0];
                numbers[0] = temp;
            }

            Console.WriteLine("{0} {1} {2} {3} {4}", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4]);

            maxNumber = numbers[0];

            for (i = 1; i < 5; i++)
            {
                if (numbers[i] > maxNumber)
                {
                    maxNumber = numbers[i];
                }
            }

            Console.WriteLine("Max: " + Math.Max(greater, Math.Max(numbers[3], numbers[4])));
            Console.WriteLine("Max: " + maxNumber);

            if (numbers[0] == 0)
            {
                System.Console.WriteLine(numbers[0]);
            }

            if (numbers[1] == 0)
            {
                System.Console.WriteLine(numbers[1]);
            }

            if (numbers[2] == 0)
            {
                System.Console.WriteLine(numbers[2]);
            }

            if (numbers[3] == 0)
            {
                System.Console.WriteLine(numbers[3]);
            }

            if (numbers[4] == 0)
            {
                System.Console.WriteLine(numbers[4]);
            }

            if (numbers[0] + numbers[1] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[1]);
            }

            if (numbers[0] + numbers[2] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[2]);
            }

            if (numbers[0] + numbers[3] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[3]);
            }

            if (numbers[0] + numbers[4] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[4]);
            }

            if (numbers[0] + numbers[1] + numbers[2] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[1] + " " + numbers[2]);
            }

            if (numbers[0] + numbers[2] + numbers[3] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[2] + " " + numbers[3]);
            }

            if (numbers[0] + numbers[3] + numbers[4] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[3] + " " + numbers[4]);
            }

            if (numbers[0] + numbers[1] + numbers[2] + numbers[3] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[1] + " " + numbers[2] + " " + numbers[3]);
            }

            if (numbers[0] + numbers[2] + numbers[3] + numbers[4] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[2] + " " + numbers[3] + " " + numbers[4]);
            }

            if (numbers[0] + numbers[1] + numbers[2] + numbers[3] + numbers[4] == 0)
            {
                System.Console.WriteLine(numbers[0] + " " + numbers[1] + " " + numbers[2] + " " + numbers[3] + " " + numbers[4]);
            }
        }
    }
}
