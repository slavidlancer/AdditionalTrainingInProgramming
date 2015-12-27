using System;

namespace HelloCSharp
{
    class HelloCSharp
    {
        static void Main(string[] args)
        {
            int i, j;
            string number;
            DateTime thisDay = System.DateTime.Now;

            System.Console.WriteLine("Hello C#");
            System.Console.Write("First Last Names\n");
            System.Console.WriteLine("1\n101\n1001");
            System.Console.WriteLine(thisDay.ToString());
            System.Console.WriteLine(System.Math.Sqrt(12345));


            for (i = 2, j = -3; i < 102; i = i + 2)
            {
                System.Console.WriteLine(i);

                System.Console.WriteLine(j);

                j -= 2;
            }


            System.Console.WriteLine("Enter a number:\n");

            number = System.Console.ReadLine();

            System.Console.WriteLine(int.Parse(number) + 10);


            try
            {
                throw new System.NotImplementedException("intended exception");
            }
            catch
            {
                System.Console.WriteLine("catched exception");
            }
        }
    }
}
