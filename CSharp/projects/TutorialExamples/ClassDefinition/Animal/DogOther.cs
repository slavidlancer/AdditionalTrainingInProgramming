using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Animal
{
    class DogOther
    {
        // Static variable
		static int dogCount;

		// Instance variables
		private string name;
		private int age;

        public DogOther(string name, int age)
		{
			this.name = name;
			this.age = age;
			dogCount += 1;
		}

		public void Bark()
		{
			System.Console.WriteLine("wow-wow");
		}

		// Non-static (instance) method
		public void PrintInfo()
		{
			// Accessing instance variables – name and age
			Console.Write("Dog's name: " + this.name + "; age: " + this.age + "; often says: ");

			// Calling instance method
			this.Bark();
		}
    }
}
