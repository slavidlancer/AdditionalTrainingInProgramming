using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Methods
{
    class Methods
    {
        static void Main(string[] args)
        {
            int numberArg = 3;
            int[] arrayArg = new int[] { 1, 2, 3 };
            decimal[] priceArray = new decimal[] { 1m, 2m };
            int[] numbersToSort = Sort(0, 5, 1, 2, 13, 21, 89, 144, 293, 34, 55, 8, 3);

            PrintNumbers(numbersToSort);

            System.Console.WriteLine(GetRectangleArea(10, 5));

            PrintCompanyInformation();

            PrintTotalAmountForBooks(1m, 2m, 3m, 4m);
            PrintTotalAmountForBooks(priceArray);

            PrintSign(12345 - 67890 + 67890 - 12341);

            PrintMax(1.0f, 5.67f);

            PrintNumber(numberArg);

            System.Console.WriteLine("inside main function: " + numberArg);

            System.Console.WriteLine("before modify array function, the argument is: ");

            PrintArray(arrayArg);

            ModifyArray(arrayArg);

            System.Console.WriteLine("after modify array function, the argument is: ");

            PrintArray(arrayArg);

            PrintAnotherNumber(5);

            PrintInfo("name", 01);

            PrintTotalAmount(priceArray);

            System.Console.WriteLine("sum: " +
                CalculateSum("name ", "3", "2", "1", 0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,
                144, 293));
            System.Console.WriteLine("sum: " + CalculateSum("second name "));
            System.Console.WriteLine(CalculateSum("0 "));
            System.Console.WriteLine(CalculateSum("0 ", one: "one"));

            Draw(1.50);
            Draw("string");
            Draw(1.23456789098765432101234567890987654321);
            Draw(22);

            System.Console.Write("n = ");
            int number = System.Int32.Parse(System.Console.ReadLine());

            for (int line = 1; line <= number; line++)
            {
                PrintLine(1, line);
            }

            for (int line = number - 1; line >= 1; line--)
            {
                PrintLine(1, line);
            }

            PrintTriangle(number);

            System.Console.WriteLine(Multiply(3, 14));
            System.Console.WriteLine(MultiplyNeat(0, 14));

            System.Console.WriteLine(Compare(30, 14));
            System.Console.WriteLine(Compare(0, 0));

            System.Console.Write("temperature in F = ");
            double temperature = System.Double.Parse(System.Console.ReadLine());

            temperature = ConvertFahrenheitToCelsius(temperature);

            System.Console.WriteLine("temperature in C = {0:f2}", temperature);

            if (temperature >= 37)
            {
                System.Console.WriteLine("hot");
            }

            System.Console.Write("first month (1-12): ");
            int firstMonth = System.Int32.Parse(System.Console.ReadLine());

            System.Console.Write("second month (1-12): ");
            int secondMonth = System.Int32.Parse(System.Console.ReadLine());

            CalculatePeriod(firstMonth, secondMonth);

            System.Console.WriteLine("What time is it?");
            System.Console.Write("Hours: ");
            int hours = System.Int32.Parse(System.Console.ReadLine());
            System.Console.Write("Minutes: ");
            int minutes = System.Int32.Parse(System.Console.ReadLine());

            bool isValidTime = ValidateHours(hours) && ValidateMinutes(minutes);

            if (isValidTime)
            {
                System.Console.WriteLine("The time is {0}:{1} h.", hours, minutes);
            }
            else
            {
                System.Console.WriteLine("Not correct time!");
            }
        }


        static double GetRectangleArea(double width, double height)
        {
            double area = width * height;
            return area;
        }


        static void PrintLogo(string logo)
        {
            System.Console.WriteLine("Logo: " + logo);
            System.Console.WriteLine("~|_|~");
        }


        static void PrintCompanyInformation()
        {
            PrintLogo("abv");

            System.Console.WriteLine("company");
            System.Console.WriteLine("info");
        }


        static void PrintTotalAmount(decimal[] prices)
        {
            decimal totalAmount = 0;

            foreach (decimal singlePrice in prices)
            {
                totalAmount += singlePrice;
            }

            System.Console.WriteLine("total amount of: " + totalAmount);
        }


        static void PrintTotalAmountForBooks(params decimal[] prices)
        {
            decimal totalAmount = 0;

            foreach (decimal singleBookPrice in prices)
            {
                totalAmount += singleBookPrice;
            }

            System.Console.WriteLine("total amount of all books: " + totalAmount);
        }


        static void PrintSign(int number)
        {
            if (number > 0)
            {
                System.Console.WriteLine("positive number");
            }
            else if (number < 0)
            {
                System.Console.WriteLine("negative number");
            }
            else if (number == 0)
            {
                System.Console.WriteLine("zero number");
            }
        }


        static void PrintMax(float numberFirst, float numberSecond)
        {
            float max = numberFirst;

            if (numberSecond > numberFirst)
            {
                max = numberSecond;
            }

            System.Console.WriteLine("max number: " + max);
        }


        static void PrintNumber(int numberParam)
        {
            numberParam = 5;

            System.Console.WriteLine("inside function: " + numberParam);
        }


        static void ModifyArray(int[] arrayParam)
        {
            arrayParam[0] = 5;

            System.Console.WriteLine("in the function, the array parameter is: ");

            PrintArray(arrayParam);
        }


        static void PrintArray(int[] arrayParam)
        {
            System.Console.Write("[");

            int length = arrayParam.Length;

            if (length > 0)
            {
                System.Console.Write(arrayParam[0].ToString());

                for (int index = 1; index < length; index++)
                {
                    System.Console.Write(", " + arrayParam[index]);
                }
            }

            System.Console.WriteLine("]");
        }


        static void PrintAnotherNumber(float number)
        {
            System.Console.WriteLine("the floating number is: {0:F1}", number);
        }


        static void PrintInfo(string name, int number)
        {
            System.Console.WriteLine("{0} {1}", name, number);
        }


        static long CalculateSum(string inputString, string one = "1", string two = "2",
            string three = "3", params int[] elements)
        {
            long sum = 0;

            foreach (int element in elements)
            {
                sum += element;
            }

            System.Console.WriteLine(inputString + one + two + three);

            return sum;
        }


        static void Draw(string inputString)
        {
            System.Console.WriteLine(inputString);
        }


        static void Draw(int number)
        {
            System.Console.WriteLine(number);
        }


        static void Draw(float number)
        {
            System.Console.WriteLine(number);
        }


        static void Draw(double number)
        {
            System.Console.WriteLine(number);
        }


        static void PrintLine(int start, int end)
        {
            for (int index = start; index <= end; index++)
            {
                System.Console.Write(" " + index);
            }

            System.Console.WriteLine();
        }


        static void PrintTriangle(int n)
        {
            for (int line = 1; line <= n; line++)
            {
                PrintLine(1, line);
            }

            for (int line = n - 1; line >= 1; line--)
            {
                PrintLine(1, line);
            }
        }


        static int Multiply(int firstNumber, int secondNumber)
        {
            int result = firstNumber * secondNumber;

            return result;
        }


        static int MultiplyNeat(int firstNumber, int secondNumber)
        {
            return firstNumber * secondNumber;
        }


        static int Compare(int firstNumber, int secondNumber)
        {
            if (firstNumber > secondNumber)
            {
                return 1;
            }
            else if (firstNumber == secondNumber)
            {
                return 0;
            }
            else
            {
                return -1;
            }
        }


        static double ConvertFahrenheitToCelsius(double temperatureF)
        {
            double temperatureC = (temperatureF - 32) * 5 / 9;

            return temperatureC;
        }


        static string GetMonth(int month)
        {
            string monthName;

            switch (month)
            {
                case 1:
                    monthName = "January";

                    break;

                case 2:
                    monthName = "February";

                    break;

                case 3:
                    monthName = "March";

                    break;

                case 4:
                    monthName = "April";

                    break;

                case 5:
                    monthName = "May";

                    break;

                case 6:
                    monthName = "June";

                    break;

                case 7:
                    monthName = "July";

                    break;

                case 8:
                    monthName = "August";

                    break;

                case 9:
                    monthName = "September";

                    break;

                case 10:
                    monthName = "October";

                    break;

                case 11:
                    monthName = "November";

                    break;

                case 12:
                    monthName = "December";

                    break;

                default:
                    System.Console.WriteLine("Invalid month!");
                    return null;
            }

            return monthName;
        }

        static void CalculatePeriod(int startMonth, int endMonth)
        {
            int period = endMonth - startMonth;

            if (period < 0)
            {
                period += 12;
            }

            System.Console.WriteLine("There are {0} months from {1} to {2}.", period,
                GetMonth(startMonth), GetMonth(endMonth));
        }


        static bool ValidateHours(int hours)
        {
            bool result = (hours >=0) && (hours < 24);

            return result;
        }


        static bool ValidateMinutes(int minutes)
        {
            bool result = (minutes >= 0) && (minutes <= 59);

            return result;
        }


        static int[] Sort(params int[] numbers)
        {
            for (int firstIndex = 0; firstIndex < numbers.Length - 1; firstIndex++)
            {
                for (int secondIndex = firstIndex + 1; secondIndex < numbers.Length;
                    secondIndex++)
                {
                    if (numbers[firstIndex] > numbers[secondIndex])
                    {
                        int tempNumber = numbers[firstIndex];
                        numbers[firstIndex] = numbers[secondIndex];
                        numbers[secondIndex] = tempNumber;
                    }
                }
            }

            return numbers;
        }


        static void PrintNumbers(params int[] numbers)
        {
            for (int index = 0; index < numbers.Length; index++)
            {
                System.Console.Write("{0}", numbers[index]);

                if (index < (numbers.Length - 1))
                {
                    System.Console.Write(", ");
                }
            }

            System.Console.WriteLine();
        }
    }
}
