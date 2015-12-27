using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDefinition.Enumerations
{
    public enum CoffeeSize
    {
        Small = 100, Normal = 150, Double = 300
    }

    public class Coffee
    {
        public CoffeeSize size; //private CoffeeSize size;

        /*public static enum CoffeeSize
        {
            Small = 100, Normal = 150, Double = 300
        }*/

        public Coffee(CoffeeSize size)
        {
            this.size = size;
        }

        public CoffeeSize Size
        {
            get
            {
                return size;
            }
        }
    }

    public class PriceCalculator
    {
        public const int SmallCoffeeQuantity = 100;
        public const int NormalCoffeeQuantity = 150;
        public const int DoubleCoffeeQuantity = 300;

        public void CashMachine()
        {
        }

        public double CalcPrice(int quantity) //public double CalcPrice(Coffee.CoffeeSize coffeeSize)
        {
            switch (quantity)
            {
                case SmallCoffeeQuantity: //case Coffee.CoffeeSize.Small:
                    return 0.20;
                case NormalCoffeeQuantity: //case Coffee.CoffeeSize.Normal:
                    return 0.30;
                case DoubleCoffeeQuantity: //case Coffee.CoffeeSize.Double:
                    return 0.60;
                default:
                    throw new InvalidOperationException("Unsupported coffee quantity: " + quantity); //+ ((int)coffeeSize)
            }
        }

        public double GetPrice(CoffeeSize coffeeSize)
        {
            switch (coffeeSize)
            {
                case CoffeeSize.Small:
                    return 0.20;
                case CoffeeSize.Normal:
                    return 0.40;
                case CoffeeSize.Double:
                    return 0.60;
                default:
                    throw new InvalidOperationException("Unsupported coffee quantity: " + ((int)coffeeSize));
            }
        }
    }
}