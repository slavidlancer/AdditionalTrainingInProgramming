using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Animal
{
    public class AnimalShelter
    {
        private const int DefaultPlacesCount = 20;
        private Dog[] animalList;
        private int usedPlaces;

        public AnimalShelter()
            : this(DefaultPlacesCount)
        {
        }

        public AnimalShelter(int placesCount)
        {
            System.Console.WriteLine(placesCount);

            this.animalList = new Dog[placesCount];
            this.usedPlaces = 0;

            System.Console.WriteLine(this.animalList);
        }

        public void Shelter(Dog newAnimal)
        {
            if (this.usedPlaces >= this.animalList.Length)
            {
                throw new InvalidOperationException("Shelter is full.");
            }

            System.Console.WriteLine(newAnimal);

            this.animalList[this.usedPlaces] = newAnimal;
            this.usedPlaces++;

            System.Console.WriteLine(this.usedPlaces);
        }

        public Dog Release(int index)
        {
            if (index < 0 || index >= this.usedPlaces)
            {
                throw new ArgumentOutOfRangeException("Invalid cell index: " + index);
            }

            Dog releasedAnimal = this.animalList[index];

            for (int i = index; i < this.usedPlaces - 1; i++)
            {
                this.animalList[i] = this.animalList[i + 1];
            }

            this.animalList[this.usedPlaces - 1] = null;
            this.usedPlaces--;

            System.Console.WriteLine(this.animalList[this.usedPlaces - 1]);
            System.Console.WriteLine(releasedAnimal);
            System.Console.WriteLine(this.usedPlaces);

            return releasedAnimal;
        }
    }
}
