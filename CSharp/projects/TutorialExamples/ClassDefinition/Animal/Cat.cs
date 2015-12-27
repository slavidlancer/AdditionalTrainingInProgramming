using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Animal
{
    class Cat
    {
        private string name = "null";

        public Cat() //constructor
        {
            this.name = "cat_name";
        }

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

        public void Meow() //method: private/internal, protected/protected internal
        {
            System.Console.WriteLine("{0} meowed meow", name);
        }
    }
}
