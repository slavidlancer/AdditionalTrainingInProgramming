using System;

namespace Arrays
{
    class Arrays
    {
        static void Main(string[] args)
        {
            System.Console.Write("Enter n = ");
            int n = Int32.Parse(System.Console.ReadLine());

            int[] arrayOfIntegers = new int[n];
            int[] arrayOfIntegersReversed = new int[n];
            char[] arrayOfChars = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
                                      'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
                                      's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
            int maximumValueIndex = 0;
            int[,] matrixOfConstantValues = {
                                            {1, 2, 3, 4},
                                            {5, 6, 7, 8},
                                            {9, 10, 11, 12},
                                            {13, 14, 15, 16}
                                            };
            int[,] matrixOfInputValues = new int[3, 14];
            int bestSum = Int32.MinValue;
            int bestRow = 0;
            int bestColumn = 0;
            int[][] jaggedArray;
            jaggedArray = new int[2][];
            jaggedArray[0] = new int[5];
            jaggedArray[1] = new int[7];
            int[][] secondJaggedArray = {
                                      new int[] {1, 2, 3},
                                      new int[] {4, 5, 6, 7, 8, 9},
                                      new int[] {0}
                                  };
            const int HEIGHT = 12;
            long[][] triangle = new long[HEIGHT + 1][];

            for (int row = 0; row < HEIGHT; row++)
            {
                triangle[row] = new long[row + 1];
            }

            triangle[0][0] = 1;

            for (int row = 0; row < HEIGHT - 1; row++)
            {
                for (int column = 0; column <= row; column++)
                {
                    triangle[row + 1][column] += triangle[row][column];
                    triangle[row + 1][column + 1] += triangle[row][column];

                    //System.Console.WriteLine("{0, 3} ", triangle[row][column]);
                    //System.Console.Write("{0, 3} ", triangle[row + 1][column]);
                    //System.Console.Write("{0, 3} ", triangle[row + 1][column + 1]);
                }

                System.Console.WriteLine();
            }

            for (int row = 0; row < HEIGHT; row++)
            {
                System.Console.Write("".PadLeft((HEIGHT - row) * 2));

                for (int column = 0; column <= row; column++)
                {
                    System.Console.Write("{0, 3} ", triangle[row][column]);
                }

                System.Console.WriteLine();
            }


            for (int row = 0; row < matrixOfConstantValues.GetLength(0) - 1; row++)
            {
                for (int column = 0; column < matrixOfConstantValues.GetLength(1) - 1;
                    column++)
                {
                    int sum = matrixOfConstantValues[row, column] +
                        matrixOfConstantValues[row, column + 1] +
                        matrixOfConstantValues[row + 1, column] +
                        matrixOfConstantValues[row + 1, column + 1];

                    if (sum > bestSum)
                    {
                        bestSum = sum;
                        bestRow = row;
                        bestColumn = column;
                    }
                }
            }

            System.Console.WriteLine("The best platform is (by default - first" +
                "upper left area:\n{0} {1}",
                matrixOfConstantValues[bestRow, bestColumn],
                matrixOfConstantValues[bestRow, bestColumn + 1]);
            System.Console.WriteLine("{0} {1}",
                matrixOfConstantValues[bestRow + 1, bestColumn],
                matrixOfConstantValues[bestRow + 1, bestColumn + 1]);
            System.Console.WriteLine("With sum: " + bestSum);


            for (int row = 0; row < matrixOfInputValues.GetLength(0); row++)
            {
                for (int column = 0; column < matrixOfInputValues.GetLength(1);
                    column++)
                {
                    System.Console.Write("matrix[{0}][{1}] = ", row, column);
                    matrixOfInputValues[row, column] = Int32.Parse(System.Console.ReadLine());
                }

                System.Console.WriteLine();
            }

            for (int row = 0; row < matrixOfInputValues.GetLength(0); row++)
            {
                for (int column = 0; column < matrixOfInputValues.GetLength(1);
                    column++)
                {
                    System.Console.Write("{0, 3} ", matrixOfInputValues[row, column]);
                }

                System.Console.WriteLine();
            }


            for (int row = 0; row < matrixOfConstantValues.GetLength(0); row++)
            {
                for (int column = 0; column < matrixOfConstantValues.GetLength(1);
                    column++)
                {
                    System.Console.Write("{0, 3}", matrixOfConstantValues[row, column] + " ");
                }

                System.Console.WriteLine();
            }

            for (int index = 0; index < n; index++)
            {
                System.Console.Write("Enter number[{0}] = ", index);
                arrayOfIntegers[index] = Int32.Parse(System.Console.ReadLine());
            }

            for (int index = n - 1; index >= 0; index--)
            {
                System.Console.Write(arrayOfIntegers[index] + " ");
            }

            System.Console.WriteLine();

            System.Array.Sort(arrayOfIntegers);

            for (int index = n - 1; index >= 0; index--)
            {
                System.Console.Write(arrayOfIntegers[index] + " ");
            }

            System.Console.WriteLine();

            System.Array.Reverse(arrayOfIntegers);

            for (int index = n - 1, reversedIndex = 0; index >= 0; index--, reversedIndex++)
            {
                System.Console.Write(arrayOfIntegers[index] + " ");

                arrayOfIntegersReversed[reversedIndex] = arrayOfIntegers[index];
            }

            System.Console.WriteLine();

            for (int index = 0; index < n; index++)
            {
                System.Console.Write(arrayOfIntegersReversed[index] + " ");
            }

            System.Console.WriteLine();

            for (int index = 0; index < arrayOfChars.Length; index++)
            {
                System.Console.Write(arrayOfChars[index] + " ");
            }

            System.Console.WriteLine();

            for (int indexI = 0; indexI < arrayOfChars.Length - 1; indexI++)
            {
                maximumValueIndex = indexI;

                for (int indexJ = indexI + 1; indexJ < arrayOfChars.Length; indexJ++)
                {
                    if (arrayOfChars[indexJ] > arrayOfChars[maximumValueIndex])
                    {
                        maximumValueIndex = indexJ;
                    }
                }

                if (maximumValueIndex != indexI)
                {
                    char tempValue = arrayOfChars[maximumValueIndex];
                    arrayOfChars[maximumValueIndex] = arrayOfChars[indexI];
                    arrayOfChars[indexI] = tempValue;
                }
            }

            for (int index = 0; index < arrayOfChars.Length; index++)
            {
                System.Console.Write(arrayOfChars[index] + " ");
            }

            System.Console.WriteLine();
        }
    }
}
