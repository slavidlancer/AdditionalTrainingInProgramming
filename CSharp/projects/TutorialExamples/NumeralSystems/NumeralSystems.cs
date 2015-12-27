using System;

namespace NumeralSystems
{
    class NumeralSystems
    {
        static void Main(string[] args)
        {
            System.Console.Write("Enter binary number: ");
            string byteInput = System.Console.ReadLine();
            string hexResult = "";
            string hexValue = "";
            byte inputBase = 2;
            byte outputBase = 16;
            byte byteLength = (byte)byteInput.Length;
            byte[] bitsInput = new byte[byteLength];
            int[] resultHexArray = new int[outputBase * outputBase];
            double sumForDecimalNumber = 0;
            int iteration = 0;
            int byteInputAsDecimal = 0;
            int decimalNumberAsInt = 0;
            int number = 0;
            bool isDecimalCalculatedCorrect = false;


            System.Console.WriteLine("\nThe input is " + byteInput + ".\n");

            for (int byteIndex = 0, bitIndex = byteInput.Length - 1;
                byteIndex < byteLength; byteIndex++, bitIndex--)
            {
                bitsInput[bitIndex] = Byte.Parse(byteInput[byteIndex].ToString());
            }

            for (int bitIndex = 0; bitIndex < byteLength; bitIndex++)
            {
                sumForDecimalNumber += bitsInput[bitIndex] *
                    Math.Pow((double)inputBase, (double)bitIndex);
            }

            byteInputAsDecimal = Convert.ToInt32(byteInput, 2);
            decimalNumberAsInt = (int)sumForDecimalNumber;

            System.Console.Write("The decimal result " + decimalNumberAsInt +
                " and the converted value " + byteInputAsDecimal + " are ");

            isDecimalCalculatedCorrect = (decimalNumberAsInt == byteInputAsDecimal);

            if (isDecimalCalculatedCorrect)
            {
                System.Console.WriteLine("equal.\n");
            }
            else
            {
                System.Console.WriteLine("not equal.\n");

                return;
            }

            number = decimalNumberAsInt;

            do
            {
                resultHexArray[iteration] = number % outputBase;
                number /= outputBase;

                iteration++;

                if (number < outputBase)
                {
                    resultHexArray[iteration] = number;

                    break;
                }
            }
            while (number > 0);

            for (int index = iteration; index >= 0; index--)
            {
                if (resultHexArray[index] > 9)
                {
                    switch (resultHexArray[index])
                    {
                        case 10:
                            {
                                hexResult += "A";

                                break;
                            };
                        case 11:
                            {
                                hexResult += "B";

                                break;
                            };
                        case 12:
                            {
                                hexResult += "C";

                                break;
                            };
                        case 13:
                            {
                                hexResult += "D";

                                break;
                            };
                        case 14:
                            {
                                hexResult += "E";

                                break;
                            };
                        case 15:
                            {
                                hexResult += "F";

                                break;
                            };
                        default:
                            {
                                break;
                            };
                    }
                }
                else
                {
                    hexResult += resultHexArray[index].ToString();
                }
            }

            System.Console.WriteLine("The output result in hex format is 0x"
                + hexResult + ".");

            hexValue = decimalNumberAsInt.ToString("X2");

            System.Console.WriteLine("Compared to the converted hex value 0x"
                + hexValue + ".");
        }
    }
}
