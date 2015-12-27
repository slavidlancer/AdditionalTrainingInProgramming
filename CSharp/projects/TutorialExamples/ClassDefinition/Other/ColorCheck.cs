using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class ColorCheck
    {
        private int red = 0;
        private int green = 0;
        private int blue = 0;

        public static readonly ColorCheck Black = new ColorCheck(0, 0, 0); //not const (compile-time), but static readonly (run-time)
        public static readonly ColorCheck White = new ColorCheck(255, 255, 255); //not const (compile-time), but static readonly (run-time)

        public ColorCheck(int red, int green, int blue)
        {
            this.red = red;
            this.green = green;
            this.blue = blue;
        }

        public static int AddTwoNumbers(int firstNumber, int secondNumber)
        {
            int sum = firstNumber + secondNumber;

            return sum;
        }
    }
}
