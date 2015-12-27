using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    public class Door
    {
    }

    public class Car
    {
        Door FrontRightDoor; //out of this class
        Door FrontLeftDoor; //out of this class
        Door RearRightDoor; //out of this class
        Door RearLeftDoor; //out of this class

        Engine engine; //inside of this class

        public Car()
        {
            engine = new Engine();
            engine.horsePower = 2000;
        }

        public class Engine
        {
            public int horsePower;
        }
    }
}
