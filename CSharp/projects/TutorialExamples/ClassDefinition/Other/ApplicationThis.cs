using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    public class ApplicationThis
    {
        public const double PI = 3.14;
		public readonly int size;
		public int number = 10;

		public ApplicationThis()
		{
			this.size = 0;
		}

		public ApplicationThis(int size)
		{
			this.size = size;
		}

		public int Add(int firstNumber, int secondNumber)
		{
			int result = firstNumber + secondNumber;

			return result;
		}

		public int GetNumber()
		{
			return this.number;
		}

		public void IncreaseNumber()
		{
			this.number++;
		}

		public void PrintNumber()
		{
			int print = this.GetNumber();

			System.Console.WriteLine("the number is " + print);
		}

		/*public static void Main(string[] args)
		{
			System.Console.WriteLine(PI);
			System.Console.WriteLine(ApplicationThis.PI);

			ApplicationThis app = new ApplicationThis();

			System.Console.WriteLine(app.size);
			//System.Console.WriteLine(ApplicationThis.size); //compile-time error

			ApplicationThis appSecond = new ApplicationThis(app.GetNumber()); //app.GetNumber() = app.number (this.number)

			System.Console.WriteLine(app.number);

			app.IncreaseNumber();

			System.Console.WriteLine(app.number);
		}*/
    }

    public class Lecture
    {
        private string subject = null;
        private string[] stundetsNames = null;

        public Lecture(string subject, params string[] studentsNames)
        {
            this.subject = subject;
            this.stundetsNames = studentsNames;
        }
    }
}
