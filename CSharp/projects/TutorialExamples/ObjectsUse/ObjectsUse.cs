using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjectsCreate;
using ObjectsCreate.NamespaceExample;

namespace ObjectsUse
{
    class ObjectsUse
    {
        static void Main(string[] args)
        {
            Cat firstCat = new Cat();
            firstCat.Name = "Name_01";
            firstCat.SayMiau();

            Cat secondCat = new Cat("Name_02", "Red");
            secondCat.SayMiau();

            System.Console.WriteLine("Cat {0} is {1}.", secondCat.Name, secondCat.Color);

            System.Console.WriteLine("Sequence [1..3]: {0}, {1}, {2}", Sequence.NextValue(),
                Sequence.NextValue(), Sequence.NextValue());

            Write.ClassToWrite();
        }
    }
}
