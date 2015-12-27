using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectsCreate
{
    class ObjectsCreate
    {
        private const string CapitalLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        private const string SmallLetters = "abcdefghijklmnopqrstuvwxyz";
        private const string Digits = "0123456789";
        private const string SpecialChars = "~!@#$%^&*()_+=`{}[]\\|':;.,/?<>";
        private const string AllChars = CapitalLetters + SmallLetters + Digits + SpecialChars;

        private static Random randomObjectSecond = new Random();

        static void Main(string[] args)
        {
            int sum = 0;
            int startTime = System.Environment.TickCount;

            for (int index = 0; index < 100000000; index++)
            {
                sum++;
            }

            int endTime = System.Environment.TickCount;

            System.Console.WriteLine("Elapsed time: {0} sec.", (endTime - startTime) / 1000.0);


            System.Console.WriteLine("First side length:");
            double a = double.Parse(System.Console.ReadLine());

            System.Console.WriteLine("Second side length:");
            double b = double.Parse(System.Console.ReadLine());

            System.Console.WriteLine("Size of the angle in degrees:");
            int angle = Int32.Parse(System.Console.ReadLine());

            double angleInRadians = System.Math.PI * angle / 180.0;

            System.Console.WriteLine("Area of the triangle: {0}", 0.50 * a * b *
                System.Math.Sin(angleInRadians));

            System.Console.WriteLine(System.Math.PI);
            System.Console.WriteLine(System.Math.E);


            Random randomObject = new Random();

            for (int number = 1; number <= 6; number++)
            {
                int randomNumber = randomObject.Next(49) + 1;

                System.Console.Write("{0} ", randomNumber);
            }

            System.Console.WriteLine();


            StringBuilder password = new StringBuilder();

            for (int index = 1; index <= 2; index++)
            {
                char capitalLetter = GenerateChar(CapitalLetters);
                InsertAtRandomPosition(password, capitalLetter);
            }

            for (int index = 1; index <= 2; index++)
            {
                char smallLetter = GenerateChar(SmallLetters);
                InsertAtRandomPosition(password, smallLetter);
            }

            for (int index = 1; index <= 3; index++)
            {
                char specialChar = GenerateChar(SpecialChars);
                InsertAtRandomPosition(password, specialChar);
            }

            int count = randomObjectSecond.Next(8);

            for (int index = 1; index <= count; index++)
            {
                char specialChar = GenerateChar(AllChars);
                InsertAtRandomPosition(password, specialChar);
            }

            System.Console.WriteLine(password);


            /*System.Collections.Generic.List<int> ints = new System.Collections.Generic.List<int>();
            System.Collections.Generic.List<double> doubles = new System.Collections.Generic.List<double>();*/

            List<int> ints = new List<int>();
            List<double> doubles = new List<double>();


            while (true)
            {
                int intResult = 0;
                double doubleResult = 0;

                System.Console.WriteLine("Enter an int or a double:");
                string input = System.Console.ReadLine();

                if (Int32.TryParse(input, out intResult))
                {
                    ints.Add(intResult);
                }
                else if (double.TryParse(input, out doubleResult))
                {
                    doubles.Add(doubleResult);
                }
                else
                {
                    break;
                }
            }

            System.Console.WriteLine("You entered {0} ints:", ints.Count);

            foreach (var item in ints)
            {
                System.Console.Write(" " + item);
            }

            System.Console.WriteLine();

            System.Console.WriteLine("You entered {0} doubles:", doubles.Count);

            foreach (var item in doubles)
            {
                System.Console.Write(" " + item);
            }

            System.Console.WriteLine();
        }


        private static void InsertAtRandomPosition(StringBuilder password, char character)
        {
            int randomPosition = randomObjectSecond.Next(password.Length + 1);
            password.Insert(randomPosition, character);
        }


        private static char GenerateChar(string availableChars)
        {
            int randomIndex = randomObjectSecond.Next(availableChars.Length);
            char randomChar = availableChars[randomIndex];

            return randomChar;
        }
        

    }
}
