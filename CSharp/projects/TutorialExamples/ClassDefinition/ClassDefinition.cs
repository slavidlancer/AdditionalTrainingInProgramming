using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassDefinition.Animal;
using ClassDefinition.Other;
using ClassDefinition.Enumerations;

namespace ClassDefinition
{
    class ClassDefinition
    {
        static void Main(string[] args)
        {
            /*string firstDogName = null;

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

            System.Console.WriteLine("third dog name: " + thirdDog.Name);

            Dog[] dogs = new Dog[] { firstDog, secondDog, thirdDog };

            foreach (Dog dog in dogs)
            {
                dog.Bark();
            }

            Dog newDog = new Dog("ime", 10, 3.14);

            System.Console.WriteLine(newDog.Name + " " + newDog.size + " " + newDog.sum);
            //newDog.name;
            System.Console.WriteLine(Dog.dogCount);
            System.Console.WriteLine(Dog.GetDogCount());

            Kid newKid = new Kid();

            newKid.CallTheDog(newDog);
            newKid.WagTheDog(newDog);


            //System.Console.WriteLine(PI);
            System.Console.WriteLine(ApplicationThis.PI);

            ApplicationThis app = new ApplicationThis();

            System.Console.WriteLine(app.size);
            //System.Console.WriteLine(ApplicationThis.size); //compile-time error

            ApplicationThis appSecond = new ApplicationThis(app.GetNumber()); //app.GetNumber() = app.number (this.number)

            System.Console.WriteLine(app.number);

            app.IncreaseNumber();

            System.Console.WriteLine(app.number);


            Lecture lecture = new Lecture("Biology", "firstName", "secondName");


            Point tochka = new Point(5, 6);

            //double tochkaPoX = tochka.X;
            //double tochkaPoY = tochka.Y;

            double tochkaPoX = tochka.XCoord;
            double tochkaPoY = tochka.YCoord;

            System.Console.WriteLine("x coordinate: " + tochkaPoX);
            System.Console.WriteLine("y coordinate: " + tochkaPoY);


            Rectangle rectangleInstance = new Rectangle(1.0f, 2.0f); //instance -> new object

            float rectangleArea = rectangleInstance.Area; //get

            rectangleInstance.StringValue = "string"; //set

            System.Console.WriteLine(rectangleArea);
            System.Console.WriteLine(rectangleInstance.StringValue);


            int calculatedSum = ColorCheck.AddTwoNumbers(3, 5);

            System.Console.WriteLine(calculatedSum);


            DogOther dog = new DogOther("Sharo", 1);

            dog.PrintInfo();


            Circle circle = new Circle(3);

            circle.PrintSurface();


            double radius = 5;
            // Accessing static method from other static method
            double circlePerimeter = MathClass.CalculateCirclePerimeter(radius);
            Console.WriteLine("Circle with radius " + radius + " has perimeter: " + circlePerimeter);


            //SystemInfo sysInfoInstance = new SystemInfo(); //?
            //Console.WriteLine("System version: " + sysInfoInstance.Version); //wrong

            // Invocation of static property setter
            Info.Vendor = "system vendor";
            // Invocation of static property getters
            System.Console.WriteLine("System version: " + Info.Version);
            System.Console.WriteLine("System vendor: " + Info.Vendor);


            System.Console.WriteLine(SqrtPrecalculated.GetSqrt(254));	// Result: 15


            int mondayValue = (int)Enumerations.Enumerations.Days.Mon;

            System.Console.WriteLine(mondayValue); //0
            System.Console.WriteLine(Enumerations.Enumerations.Days.Mon is Enumerations.Enumerations.Days); //true
            System.Console.WriteLine(Enumerations.Enumerations.Days.Mon); //Mon


            Coffee normalCoffee = new Coffee(CoffeeSize.Normal);
            Coffee doubleCoffee = new Coffee(CoffeeSize.Double);

            System.Console.WriteLine("The {0} coffee is {1} ml.", normalCoffee.Size, (int)normalCoffee.Size);
            System.Console.WriteLine("The {0} coffee is {1} ml.", doubleCoffee.Size, (int)doubleCoffee.Size);

            PriceCalculator priceCalc = new PriceCalculator();

            System.Console.WriteLine(priceCalc.CalcPrice(PriceCalculator.NormalCoffeeQuantity));
            System.Console.WriteLine(priceCalc.GetPrice(CoffeeSize.Normal));


            OuterClass outerClass = new OuterClass("outer");
            OuterClass.NestedClass nestedClass = new OuterClass.NestedClass(outerClass, "nested");

            nestedClass.PrintNames();


            Car newCar = new Car();


            AnimalShelter dogsShelter = new AnimalShelter(10);

            Dog dog1 = new Dog();
            Dog dog2 = new Dog();
            Dog dog3 = new Dog();

            Cat cat1 = new Cat();

            dogsShelter.Shelter(dog1);

            dogsShelter.Shelter(dog2);

            dogsShelter.Shelter(dog3);

            dogsShelter.Release(1); // Releasing dog2

            //dogsShelter.Shelter(cat1); //error


            AnimalShelterGenerics<Dog> shelter = new AnimalShelterGenerics<Dog>();

            shelter.Shelter(new Dog());
            shelter.Shelter(new Dog());
            shelter.Shelter(new Dog());

            Dog d = shelter.Release(1); // Release the second dog
            System.Console.WriteLine(d);

            d = shelter.Release(0); // Release the first dog
            System.Console.WriteLine(d);

            d = shelter.Release(0); // Release the third dog
            System.Console.WriteLine(d);

            //d = shelter.Release(0); // Exception: invalid cell index

            AnimalShelterGenerics<Cat> shelterCat = new AnimalShelterGenerics<Cat>();

            //shelter.Shelter(new Cat()); //error, shelter is for Dogs only, shelterCat is for cats only
            shelterCat.Shelter(new Cat());*/


            SwapClass swapThis = new SwapClass();

            int num1 = 3;
            int num2 = 5;

            System.Console.WriteLine("Before swap: {0} {1}", num1, num2);

            // Invoking the method with concrete type (int)
            swapThis.Swap<int>(ref num1, ref num2);
            System.Console.WriteLine("After swap: {0} {1}\n", num1, num2);

            string str1 = "Hello";
            string str2 = "There";

            System.Console.WriteLine("Before swap: {0} {1}!", str1, str2);

            // Invoking the method with concrete type (string)
            swapThis.Swap<string>(ref str1, ref str2);
            System.Console.WriteLine("After swap: {0} {1}!", str1, str2);
        }
    }
}
