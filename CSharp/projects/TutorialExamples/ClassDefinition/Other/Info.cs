using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class Info
    {
        private static double version = 0.10;
        private static string vendor = "vendor";

        // The "version" static property
        public static double Version
        {
            get
            {
                return version;
            }

            set
            {
                version = value;
            }
        }

        // The "vendor" static property
        public static string Vendor
        {
            get
            {
                return vendor;
            }

            set
            {
                vendor = value;
            }
        }
    }
}
