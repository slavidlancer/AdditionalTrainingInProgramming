using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    class Rectangle
    {
        private float width; //field
		private float height; //field
		private int intValue;
		private double doubleValue;
		private string stringValue;

		public Rectangle(float width, float height) //constructor
		{
			this.height = height;
			this.width = width;
		}

		public float Area //property
		{
			get
			{
				return this.width * this.height;
			}

			set
			{
				this.Area = value;
			}
		}

		public int IntValue
		{
			get; //public int GetIntValue() {return this.intValue;}
			set; //public int SetIntValue() {this.intValue = value;}
		}

		public double DoubleValue
		{
			get;
			set;
		}

		public string StringValue
		{
			get
			{
				return this.stringValue;
			}

			set
			{
				if (value == "not string")
				{
                    throw new ArgumentException("invalid argument: the value is not a string");
				}
				
				this.stringValue = value;
			}
		}
    }
}
