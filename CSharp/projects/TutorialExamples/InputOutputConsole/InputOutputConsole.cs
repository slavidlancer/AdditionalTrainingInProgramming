using System;

namespace InputOutputConsole
{
    class InputOutputConsole
    {
        static void Main(string[] args)
        {
            byte hexNumber = 255;
            float ratioNumberFirst = 1.234567890f;
            float ratioNumberSecond = -0.987654321f;

            int countFives = 0;
            int i = 0;

            bool parseOk = false;
            int sumOfParsing = 0;
            int resultParsed = 0;
            string str;

            int[] numbersCheck = new int[5];
            int maxNumber;


            double a, b, c, D, tempCalculation;
            double resultParsedDouble = 0;
            string[] coefficients = new string[3];


            a = 0;
            b = 0;
            c = 0;
            D = 0;
            tempCalculation = 0;

            coefficients[0] = "a";
            coefficients[1] = "b";
            coefficients[2] = "c";


            int n;

            ulong fibonacciFirstTemp = 0;
            ulong fibonacciSecondTemp = 1;
            ulong fibonacciCurrent = 0;

            double epsilon = 1;
            double sumOfRatios = 1;
            double oldSumOfRatios = 0;
            double iDouble = 2;


            do
            {
                sumOfRatios += (1 / iDouble);

                epsilon = sumOfRatios - oldSumOfRatios;

                oldSumOfRatios = sumOfRatios;
                iDouble++;
            }
            while (epsilon > 0.001);

            System.Console.WriteLine("The sum of the ratios is {0:f3}", oldSumOfRatios);


            System.Console.WriteLine(fibonacciFirstTemp + "\n" + fibonacciSecondTemp);

            for (i = 2; i < 100; i++)
            {
                fibonacciCurrent = fibonacciFirstTemp + fibonacciSecondTemp;

                System.Console.WriteLine(fibonacciCurrent);

                fibonacciFirstTemp = fibonacciSecondTemp;
                fibonacciSecondTemp = fibonacciCurrent;
            }


            do
            {
                System.Console.Write("Enter n = ");
                str = System.Console.ReadLine();

                parseOk = Int32.TryParse(str, out resultParsed);

                System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                n = resultParsed;
            }
            while (!parseOk);

            for (i = 0; i < n; i++)
            {
                do
                {
                    System.Console.Write("Enter a number = ");
                    str = System.Console.ReadLine();

                    parseOk = Int32.TryParse(str, out resultParsed);

                    System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                    sumOfParsing += resultParsed;
                }
                while (!parseOk);
            }

            System.Console.WriteLine("The sum of the {0} numbers is {1}", n, sumOfParsing);

            for (i = 1; i <= n; i++)
            {
                System.Console.WriteLine(i);
            }


            for (i = 0; i < 3; i++)
            {
                do
                {
                    System.Console.Write("Enter {0} = ", coefficients[i]);
                    str = System.Console.ReadLine();

                    parseOk = Double.TryParse(str, out resultParsedDouble);

                    System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");

                    if (parseOk)
                    {
                        switch (i)
                        {
                            case 0:
                                {
                                    a = resultParsedDouble;

                                    break;
                                }

                            case 1:
                                {
                                    b = resultParsedDouble;

                                    break;
                                }

                            case 2:
                                {
                                    c = resultParsedDouble;

                                    break;
                                }
                            default:
                                {
                                    System.Console.WriteLine("Error!");

                                    break;
                                }
                        }
                    }
                }
                while (!parseOk);
            }

            D = b * b - 4 * a * c;

            if (D == 0)
            {
                tempCalculation = -(b / (2 * a));

                System.Console.WriteLine("One root:\tx1 = x2 = " + tempCalculation);
            }
            else if (D > 0)
            {
                tempCalculation = (-b + (Math.Sqrt(D)) / (2 * a));

                System.Console.WriteLine("Two roots:\nx1 = " + tempCalculation);

                tempCalculation = (-b - (Math.Sqrt(D))) / (2 * a);
                System.Console.WriteLine("x2 = " + tempCalculation);
            }
            else
            {
                System.Console.WriteLine("No real roots, only imaginary.");
            }


            for (i = 0; i < 5; i++)
            {
                do
                {
                    System.Console.Write("Enter number = ");
                    str = System.Console.ReadLine();

                    parseOk = Int32.TryParse(str, out resultParsed);

                    System.Console.WriteLine(parseOk ? "OK" : "Correct number is needed!");
                    numbersCheck[i] = parseOk ? resultParsed : 0;
                }
                while (!parseOk);

                sumOfParsing += resultParsed;
            }

            System.Console.WriteLine("The sum of the 5 numbers is " + sumOfParsing);

            maxNumber = numbersCheck[0];

            for (i = 0; i < 5; i++)
            {
                if (maxNumber < numbersCheck[i])
                {
                    maxNumber = numbersCheck[i];
                }
                //System.Console.WriteLine(numbersCheck[i]);
            }

            System.Console.WriteLine("The maximal number is " + maxNumber);


            System.Console.Write("Number #1 = ");
            int numberOne = Int32.Parse(System.Console.ReadLine());

            System.Console.Write("Number #2 = ");
            int numberTwo = Int32.Parse(System.Console.ReadLine());

            for (i = numberOne; i <= numberTwo; i += 5)
            {
                if (i % 5 == 0)
                {
                    countFives++;
                }
            }

            System.Console.WriteLine("The count is " + countFives);


            System.Console.WriteLine("The greatest number is " + Math.Max(numberOne, numberTwo));
            System.Console.WriteLine("The smallest number is " + Math.Min(numberOne, numberTwo));


            System.Console.WriteLine("{0,-10:X}{1,-10:f2}{2,-10:f2}", hexNumber, ratioNumberFirst, ratioNumberSecond);

            System.Console.Write("Enter the name of the firm = ");
            string firmName = System.Console.ReadLine();

            System.Console.Write("Enter the address of the firm = ");
            string firmAddress = System.Console.ReadLine();

            System.Console.Write("Enter the phone number of the firm = ");
            string firmPhone = System.Console.ReadLine();

            System.Console.Write("Enter the fax number of the firm = ");
            string firmFax = System.Console.ReadLine();

            System.Console.Write("Enter the web site of the firm = ");
            string firmWebSite = System.Console.ReadLine();

            System.Console.Write("Enter the manager of the firm = ");
            string firmManager = System.Console.ReadLine();

            System.Console.WriteLine("Firm: \"{0}\"\nLocation: {1}\tPhone number: " +
            "{2}\tFax number: {3}\nWeb Site: {4}\nThe manager is " +
            "{5}.", firmName, firmAddress, firmPhone, firmFax, firmWebSite, firmManager);


            System.Console.Write("enter Radius = ");
            float radius = float.Parse(System.Console.ReadLine());

            System.Console.Write("Area of circle = ");
            System.Console.WriteLine(Math.PI * radius * radius);

            System.Console.Write("Perimeter of circle = ");
            System.Console.WriteLine(2 * Math.PI * radius);

            System.Console.Write("FirstNumber = ");
            int firstNumber = Int32.Parse(System.Console.ReadLine());

            System.Console.Write("SecondNumber = ");
            int secondNumber = Int32.Parse(System.Console.ReadLine());

            System.Console.Write("ThirdNumber = ");
            int thirdNumber = Int32.Parse(System.Console.ReadLine());

            System.Console.Write("Sum of numbers = ");
            System.Console.WriteLine(firstNumber + secondNumber + thirdNumber);
        }
    }
}
