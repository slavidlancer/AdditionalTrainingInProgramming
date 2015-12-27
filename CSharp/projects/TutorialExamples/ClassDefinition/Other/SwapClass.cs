using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    public class SwapClass
    {
        public SwapClass()
        {
        }

        public void Swap<K>(ref K a, ref K b)
        {
            K oldA = a;
            a = b;
            b = oldA;
        }
    }
}
