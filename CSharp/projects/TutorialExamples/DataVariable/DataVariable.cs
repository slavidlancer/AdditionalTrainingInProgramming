using System;

namespace DataVariable
{
    class DataVariable
    {
        static void Main(string[] args)
        {
            sbyte firstNumber = -44;
            sbyte firstNumberOther = 97;
            sbyte firstNumberAnother = -115;
            byte secondNumber = 224;
            int thirdNumber = 4825932;
            int thirdNumberOther = -1000000;
            int thirdNumberAnother = 970700000;
            uint fourthNumber = 4000000000u;
            long fifthNumber = 123456789123456789L;
            ulong sixthNumber = 12345678912345678901u;
            short seventhNumber = 1990;
            short seventhNumberOther = -10000;
            short seventhNumberAnother = 20000;
            ushort eightNumber = 52130;

            float firstFloatNumber = 34.123f;
            float secondFloatNumber = 195.1234567f;
            float thirdFloatNumber = firstFloatNumber + secondFloatNumber;
            double firstDoubleNumber = 12.123456789;
            double secondDoubleNumber = 8924.1234567;
            decimal firstDecimalNumber = 0.1234567891234567890112456789M;

            int hexVariable = 0x100;
            char? uniCodeVariable = null;
            char uniCodeOther = '\u0065';
            bool isMale = true;
            string firstString = "Hello";
            string secondString = "World";
            object firstObject = firstString + " " + secondString;
            string thirdString = (string)firstObject;
            string fourthString = "this \"quotation\"";
            string fifthString = @"this ""quotation""";
            string sixthString = null;

            string firstNameStudent = "Firstname";
            string secondNameStudent = "Secondname";
            byte ageStudent = 15;
            char genderStudent = 'm';
            int idStudent = 27569999;
            string nameStudent = firstNameStudent + " " + secondNameStudent;

            byte a = 5;
            byte b = 10;
            byte c;


            System.Console.WriteLine(firstNumber + "\n" + firstNumberOther
                + "\n" + firstNumberAnother + "\n" + secondNumber
                + "\n" + thirdNumber + "\n" + thirdNumberOther
                + "\n" + thirdNumberAnother + "\n" + fourthNumber
                + "\n" + fifthNumber + "\n" + sixthNumber
                + "\n" + seventhNumber + "\n" + seventhNumberOther
                + "\n" + seventhNumberAnother + "\n" + eightNumber);

            System.Console.WriteLine(firstFloatNumber + "\n" + firstDoubleNumber
                + "\n" + firstDecimalNumber + "\n" + secondFloatNumber
                + "\nResult = " + thirdFloatNumber + "\n" + secondDoubleNumber);

            System.Console.WriteLine(hexVariable + "\n" + uniCodeVariable
                + "\n" + uniCodeOther + "\n" + isMale + "\n" + firstString
                + "\n" + secondString + "\n" + firstObject + "\n" + thirdString
                + "\n" + fourthString + "\n" + fifthString + "\n" + sixthString);


            System.Console.WriteLine("Student: " + nameStudent + "\nAge: "
                + ageStudent + "\nGender: " + genderStudent + "\nID: "
                + idStudent);


            System.Console.WriteLine("a = " + a + ", b = " + b);

            c = a;
            a = b;
            b = c;

            System.Console.WriteLine("a = " + a + ", b = " + b);
        }
    }
}
