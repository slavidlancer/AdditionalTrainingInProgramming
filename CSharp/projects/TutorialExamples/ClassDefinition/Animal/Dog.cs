using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Animal
{
    public class Collar
    {
        private int size = 0;

        public Collar()
        {
        }
    }

    public class Kid
    {
        public void CallTheDog(Dog dog)
        {
            System.Console.WriteLine("Come, " + dog.Name + "!");
        }

        public void WagTheDog(Dog dog)
        {
            dog.Bark();
        }
    }

    /* wrong - 'Collar' does not contain a constructor that takes 0 arguments
	public class Collar
	{
		private int size = 0;

		public Collar(int size)
			: this()
		{
			this.size = size;
		}
	}*/

    public class Dog
    {
        public static int dogCount = 0;
        private string name = "Sharo"; //field: private (public, internal, protected/protected internal)
        private string[] nicknames = new string[] { "this", "that" };
        private string color = null;
        private int age;
        private long distanceRun = 1000;
        bool isWet = false;
        //OtherClass class = null;
        //OtherClass class = new OtherClass();
        private Collar collar = null;
        public const double PI = 3.14;
        public readonly int size;
        public double sum = 0d;

        public Dog() //constructor
        {
            this.name = "dog_name";
            this.collar = new Collar();

            Dog.dogCount++;
        }

        public Dog(string name) //another constructor
        {
            this.name = name;
            this.size = System.String.Compare(name, nicknames[0]);
        }

        public Dog(string name, int size, double sum)
        {
            this.name = name;
            this.size = size;
            this.sum = sum;
        }

        /*public Dog() //no parameters
            : this("Sharo") //constructor call
        {
            //
        }

        public Dog(string name) //one parameter
            : this(name, 1) //constructor call
        {
            //
        }

        public Dog(string name, int age) //two parameters
            : this(name, age, 0.30) //constructor call
        {
            //
        }

        public Dog(string name, int age, double sum) //two parameters
            : this(name, age, sum, new Collar()) //constructor call
        {
            //
        }

        public Dog(string name, int age, double sum, Collar collar)
        {
            this.name = name;
            this.age = age;
            this.sum = sum;
            this.collar = collar;
        }*/

        public string Name //property: private/internal, protected/protected internal
        {
            get
            {
                return this.name;
            }

            set
            {
                this.name = value;
            }
        }

        public string Color //property: private/internal, protected/protected internal
        {
            get
            {
                return this.color;
            }

            set
            {
                this.name = value;
            }
        }

        public void Bark() //method: private/internal, protected/protected internal
        {
            System.Console.WriteLine("{0} barked wow-wow", name);
        }

        public static int GetDogCount()
        {
            return Dog.dogCount;
        }

        /*public static void Main(string[] args) //public
		{
			string firstDogName = null;

			System.Console.Write("first dog name:");
			firstDogName = System.Console.ReadLine();

			Dog firstDog = new Dog(firstDogName);

			string colorName = firstDog.Color;
            firstDog.Color = "black";

			Dog secondDog = new Dog();

			System.Console.Write("second dog name:");
			string secondDogName = System.Console.ReadLine();

			secondDog.Name = secondDogName;

			Dog thirdDog = new Dog();

			System.Console.Write("third dog name: ", thirdDog.Name);

			Dog[] dogs = new Dog[] {firstDog, secondDog, thirdDog};

			foreach (Dog dog in dogs)
			{
				dog.Bark();
			}

			Dog newDog = new Dog("ime", 10, 3.14);

			System.Console.WriteLine(newDog.name, newDog.size, newDog.sum);
			//newDog.name;
			System.Console.WriteLine(Dog.dogCount);
			System.Console.WriteLine(Dog.GetDogCount());
		}*/
    }
}
