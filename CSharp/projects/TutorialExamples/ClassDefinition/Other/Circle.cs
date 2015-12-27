using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class Circle
    {
        public static double PI = 3.141592653589793;
        private double radius;

        public Circle(double radius)
        {
            this.radius = radius;
        }

        public static double CalculateSurface(double radius)
        {
            double result = PI * radius * radius;

            return result;
        }

        public void PrintSurface()
        {
            double surface = CalculateSurface(radius);

            System.Console.WriteLine("Circle's surface is: " + surface);
        }
    }
}
