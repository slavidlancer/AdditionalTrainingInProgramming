using System;
using System.Numerics;

namespace Loops
{
    class Loops
    {
        static void Main(string[] args)
        {
            bool isPrime = true;
            int divider = 2;

            System.Console.Write("Enter number: ");
            int number = Int32.Parse(System.Console.ReadLine());

            int maxDivider = (int)System.Math.Sqrt(number);

            while (isPrime && (divider <= maxDivider))
            {
                if (number % divider == 0)
                {
                    isPrime = false;
                }

                divider++;
            }

            System.Console.WriteLine("The number {0} is prime? {1}",
                number, isPrime);


            int tempNumber = number;
            BigInteger factorial = 1;

            do
            {
                factorial *= tempNumber;

                if (factorial > 10000000000000000)
                {
                    break;
                }

                tempNumber--;
            }
            while (tempNumber > 0);

            System.Console.WriteLine("The factorial of number {0} is {1}" +
                " [might be wrong (if it is more than 10000000000000000), " +
                "limited value]", number, factorial);


            double numberDivision = 1;
            int sumOfDivision = 0;

            for (int index = 1; index <= number; index++)
            {
                System.Console.WriteLine("index: " + index);

                numberDivision = (double)number / (double)index;

                sumOfDivision += (int)numberDivision;

                if (sumOfDivision == 20)
                {
                    continue;
                }

                System.Console.WriteLine("divided: " + numberDivision +
                    " sum: " + sumOfDivision + "\n");
            }


            for (int small = (int)numberDivision, large = sumOfDivision;
                small < large; small++, large -= (large / 2))
            {
                System.Console.WriteLine("small: " + small +
                    " large: " + large);
            }


            int[] numbersArray = {(int)numberDivision, sumOfDivision, number,
                                     tempNumber, (int)factorial};

            foreach (int numberInArray in numbersArray)
            {
                System.Console.WriteLine(numberInArray);
            }

            System.Console.WriteLine();


            String[] cardNumbers = {"A", "2", "3", "4", "5", "6", "7", "8", "9",
                                   "10", "J", "C", "Q", "K"};
            String[] cardColor = { "spatia", "kupa", "pika", "karo" };

            for (int indexColors = 0; indexColors < cardColor.Length;
                indexColors++)
            {
                for (int indexCards = 0; indexCards < cardNumbers.Length;
                    indexCards++)
                {
                    System.Console.Write(cardNumbers[indexCards] + " " +
                        cardColor[indexColors] + "\n");
                }

                System.Console.WriteLine();
            }
        }
    }
}
