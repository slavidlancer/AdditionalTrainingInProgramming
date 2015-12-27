using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class SqrtPrecalculated
    {
        public const int MaxValue = 1000;

        // Static field
        private static int[] sqrtValues;

        // Static constructor
        static SqrtPrecalculated()
        {
            sqrtValues = new int[MaxValue + 1];

            for (int index = 0; index < sqrtValues.Length; index++)
            {
                sqrtValues[index] = (int)Math.Sqrt(index);
            }
        }

        // Static method
        public static int GetSqrt(int value)
        {
            if ((value < 0) || (value > MaxValue))
            {
                throw new ArgumentOutOfRangeException(String.Format("The argument should be in range [0..{0}].", MaxValue));
            }

            return sqrtValues[value];
        }
    }
}
