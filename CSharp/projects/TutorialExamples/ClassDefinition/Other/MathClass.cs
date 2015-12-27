using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class MathClass
    {
        public const double PI = 3.141592653589793;

        // The method applies the formula: P = 2 * PI * r
        public static double CalculateCirclePerimeter(double r)
        {
            // Accessing the static variable PI from static method
            double result = 2 * PI * r;

            return result;
        }
    }
}
