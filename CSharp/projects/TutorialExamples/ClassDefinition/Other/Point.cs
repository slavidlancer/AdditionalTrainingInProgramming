using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Other
{
    public class Point
    {
        /*private double x;
        private double y;

        public Point(int x, int y)
        {
            this.x = x;
            this.y = y;
        }

        public double X
        {
            get
            {
                return this.x;
            }

            set
            {
                this.x = value;
            }
        }

        public double Y
        {
            get
            {
                return this.y;
            }

            set
            {
                this.y = value;
            }
        }*/


        private double[] coordinates;

		public Point(int xCoord, int yCoord)
		{
			this.coordinates = new double[2];

			this.coordinates[0] = xCoord;
			this.coordinates[1] = yCoord;
		}

		public double XCoord
		{
			get
			{
				return this.coordinates[0];
			}

			set
			{
				this.coordinates[0] = value;
			}
		}

        public double YCoord
        {
            get
            {
                return this.coordinates[1];
            }

            set
            {
                this.coordinates[1] = value;
            }
        }
    }
}