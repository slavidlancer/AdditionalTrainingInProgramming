using System
using System.DateTime
using System.Math

class HelloCSharp
{
	public static void Main(string[] args)
	{
		int i, j;
		string number;
		DateTime thisDay = System.DateTime.Today;

		System.Console.WriteLine("Hello C#");
		System.Console.Write("First Last Names");
		System.Console.WriteLine("1\n101\n1001");
		System.Console.WriteLine("1\n101\n1001");
		System.Console.WriteLine(thisDay.ToString());
		System.Console.WriteLine(System.Math.Sqrt(12345));


		for(i = 0, j = -3; i < 100; i++)
		{
			if (i == 0)
			{
				System.Console.WriteLine(i+2);
			}
			else if (i > 0)
			{
				if(i%2 == 0)
				{
					System.Console.WriteLine(i);
				}
			}

			System.Console.WriteLine(j);

			j -= 2;
		}


		System.Console.WriteLine("Enter a number:\n");

		do
		{
			number = System.Console.ReadLine();
		}
		while(number != null);

		System.Console.WriteLine(int.Parse(number)+System.DateTime.AddYears(10));

		throw new System.NotImplementedException("Intended Exception");
	}
}