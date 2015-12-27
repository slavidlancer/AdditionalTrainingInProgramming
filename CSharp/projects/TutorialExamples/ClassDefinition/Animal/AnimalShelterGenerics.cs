using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Animal
{
    public class AnimalShelterGenerics<TAnimal> //TAnimal
    {
        private const int DefaultPlacesCount = 20;
        private TAnimal[] animalList; //TAnimal
        private int usedPlaces;

        public AnimalShelterGenerics()
            : this(DefaultPlacesCount)
        {
        }

        public AnimalShelterGenerics(int placesCount)
        {
            this.animalList = new TAnimal[placesCount]; //TAnimal
            this.usedPlaces = 0;

            System.Console.WriteLine(placesCount);
            System.Console.WriteLine(this.animalList);
        }

        public void Shelter(TAnimal newAnimal) //TAnimal
        {
            if (this.usedPlaces >= this.animalList.Length)
            {
                throw new InvalidOperationException("Shelter is full.");
            }

            this.animalList[this.usedPlaces] = newAnimal;
            this.usedPlaces++;

            System.Console.WriteLine(newAnimal);
            System.Console.WriteLine(this.usedPlaces);
        }

        public TAnimal Release(int index) //TAnimal
        {
            if (index < 0 || index >= this.usedPlaces)
            {
                throw new ArgumentOutOfRangeException("Invalid cell index: " + index);
            }

            TAnimal releasedAnimal = this.animalList[index]; //TAnimal

            for (int i = index; i < this.usedPlaces - 1; i++)
            {
                this.animalList[i] = this.animalList[i + 1];
            }

            this.animalList[this.usedPlaces - 1] = default(TAnimal); //TAnimal

            System.Console.WriteLine(this.animalList[this.usedPlaces - 1]);

            this.usedPlaces--;

            System.Console.WriteLine(releasedAnimal);
            System.Console.WriteLine(this.usedPlaces);

            return releasedAnimal;
        }
    }
}