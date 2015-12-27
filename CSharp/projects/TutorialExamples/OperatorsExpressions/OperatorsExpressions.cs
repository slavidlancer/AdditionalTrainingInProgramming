using System;

namespace OperatorsExpressions
{
    class OperatorsExpressions
    {
        static void Main(string[] args)
        {
            int numberSimple;

            do
            {
                System.Console.Write("Enter the number: ");
                numberSimple = Convert.ToInt32(Console.ReadLine());
            }
            while ((numberSimple < 1) && (numberSimple > 100));

            bool simple = ((numberSimple % numberSimple == 0) && (numberSimple % 1 == 0)) ? true : false;

            System.Console.WriteLine("first check\tThe number is simple: " + simple + ".");

            int i;
            bool simplicity = true;

            simplicity = (numberSimple == 2) ? true : false;
            simplicity = (numberSimple % 2 == 0) ? false : true;

            int maxDivider = (int)Math.Sqrt(numberSimple);

            for (i = 3; i <= maxDivider; i += 2)
            {
                simplicity = (numberSimple % i == 0) ? false : true;
            }

            System.Console.WriteLine("second check\tThe number is simple: " + simplicity + ".");


            System.Console.Write("Enter the number: ");
            int numberBits = Convert.ToInt32(Console.ReadLine());

            System.Console.Write("Enter the position: ");
            int positionBit = Convert.ToInt32(Console.ReadLine());

            System.Console.Write("Enter 0 or 1: ");
            int valueBit = Convert.ToInt32(Console.ReadLine());

            i = 1;
            int mask = i << positionBit;

            System.Console.WriteLine((numberBits & mask) != 0 ? "the bit is 1, true" : "the bit is 0, false");

            numberBits = (valueBit == 1) ? (numberBits | (1 << positionBit)) : (numberBits & (~(1 << positionBit)));

            System.Console.WriteLine(numberBits);


            System.Console.Write("Enter the number: ");
            int numberDivision = Convert.ToInt32(Console.ReadLine());

            int firstDigit = numberDivision / 1000;
            int threeDigitsNumber = numberDivision - (firstDigit * 1000);
            int secondDigit = threeDigitsNumber / 100;
            int twoDigitsNumber = threeDigitsNumber - (secondDigit * 100);
            int thirdDigit = twoDigitsNumber / 10;
            int fourthDigit = twoDigitsNumber - (thirdDigit * 10);

            int sumDigits = firstDigit + secondDigit + thirdDigit + fourthDigit;

            System.Console.WriteLine(sumDigits);
            System.Console.WriteLine(fourthDigit + "" + firstDigit + "" + secondDigit + "" + thirdDigit);
            System.Console.WriteLine(fourthDigit + "" + thirdDigit + "" + secondDigit + "" + firstDigit);
            System.Console.WriteLine(firstDigit + "" + thirdDigit + "" + secondDigit + "" + fourthDigit);


            System.Console.Write("Enter x: ");
            int xCoordinate = Convert.ToInt32(Console.ReadLine());

            System.Console.Write("Enter y: ");
            int yCoordinate = Convert.ToInt32(Console.ReadLine());

            System.Console.Write("the point (" + xCoordinate + ", " + yCoordinate + ") is: ");
            System.Console.WriteLine((xCoordinate * xCoordinate + yCoordinate * yCoordinate <= 5) ? "inside the circle" : "outside the circle");

            bool insideCircle = (xCoordinate * xCoordinate + yCoordinate * yCoordinate <= 5) ? true : false;
            bool insideRectangle = (((xCoordinate < -1) && (yCoordinate < 1)) || ((xCoordinate > 5) && (yCoordinate > 5))) ? true : false;
            System.Console.WriteLine((insideCircle && insideRectangle) ? "inside the circle and outside the rectangle" : "outside the circle and/or inside the rectangle");


            System.Console.Write("Enter number: ");
            int checkedNumber = Convert.ToInt32(Console.ReadLine());

            int check = checkedNumber % 2;
            int checkThirdDigit = (checkedNumber > 99) ? (((checkedNumber / 100) % 10) % 7) : 1;

            byte checkedNumberBool = 9;
            byte byteEight = 8;
            byte byteZero = 0;


            float aSide = 1.23f;
            float bSide = 3f;
            float heightTrap = 2.45f;
            float areaTrap = ((aSide + bSide) / 2f) * heightTrap;


            System.Console.WriteLine("The area of the trap is: " + areaTrap);


            System.Console.Write("Enter the weight of the human on the Earth: ");
            double weightHuman = Convert.ToDouble(Console.ReadLine());

            System.Console.WriteLine("The weight of the human on the Moon is: " + (weightHuman * 0.17));


            System.Console.Write("Enter the longtitude of the rectangle: ");
            double longtitudeRectangle = Convert.ToDouble(Console.ReadLine());

            System.Console.Write("Enter the height of the rectangle: ");
            double heightRectangle = Convert.ToDouble(Console.ReadLine());

            double areaRectangle = longtitudeRectangle * heightRectangle;
            double perimeterRectangle = 2 * (longtitudeRectangle + heightRectangle);

            System.Console.WriteLine("The area of the rectangle is: " + areaRectangle + ".\nThe perimeter of the rectangle is: " + perimeterRectangle + ".");


            System.Console.Write("The checked number is ");
            System.Console.WriteLine(check == 0 ? "chetno." : "nechetno.");


            int checkFive = checkedNumber % 5;
            bool checkFiveBool = (checkFive == 0) ? true : false;

            int checkSeven = checkedNumber % 7;
            bool checkSevenBool = (checkSeven == 0) ? true : false;

            System.Console.Write("Divided by 5 and 7?");
            System.Console.WriteLine(checkFiveBool && checkSevenBool ? " - yes" : " - no");


            System.Console.Write("The third digit is 7?");
            System.Console.WriteLine(checkThirdDigit == 0 ? " - yes" : " - no");


            System.Console.Write("The third bit of " + checkedNumberBool + " is ");
            System.Console.WriteLine((byteEight & checkedNumberBool) != byteZero ? "1." : "0.");
        }
    }
}
