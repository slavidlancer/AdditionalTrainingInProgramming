using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class OuterClass
    {
        private string name;

		public OuterClass(string name)
		{
			this.name = name;
		}

		public class NestedClass
		{
			private string name;
			private OuterClass parent;

            public NestedClass(OuterClass parent, string name)
			{
				this.parent = parent;
				this.name = name;
			}

			public void PrintNames()
			{
				Console.WriteLine("Nested name: " + this.name);
				Console.WriteLine("Outer name: " + this.parent.name);
			}
		}
    }
}
