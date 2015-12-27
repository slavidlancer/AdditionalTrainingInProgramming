using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Recursion
{
    class Recursion
    {
        static int numberOfLoops;
        static int numberOfIterations;
        static int[] loops;
        static long[] numbers;
        static char[,] labyrinth =
        {
	        {' ', ' ', ' ', '*', ' ', ' ', ' '},
	        {'*', '*', ' ', '*', ' ', '*', ' '},
	        {' ', ' ', ' ', ' ', ' ', ' ', ' '},
	        {' ', '*', '*', '*', '*', '*', ' '},
	        {' ', ' ', ' ', ' ', ' ', ' ', 'e'},
        };
        
        /*static char[,] labyrinth =
        {
            {'e'},
        };*/

        /*static char[,] labyrinth =
        {
            {' ', ' ', ' '},
            {' ', ' ', ' '},
            {' ', ' ', 'e'},
        };*/

        /*static char[,] labyrinth =
        {
        {' ', '*', '*', ' ', ' '},
        {' ', ' ', ' ', '*', ' '},
        {'*', ' ', ' ', '*', 'e'},
        };*/

        /*static char[,] labyrinth =
        {
        {' ','*',' ',' ', '*','*',' ',' '},
        {' ',' ','*',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ','*','*','*', ' ',' ',' ','*'},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ','e'},
        };*/

        /*static char[,] labyrinth =
        {
        {' ','*',' ',' ', '*','*',' ',' '},
        {' ',' ','*',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ',' ',' ',' ', ' ',' ',' ',' '},
        {' ','*','*','*', ' ',' ',' ','*'},
        {' ',' ',' ',' ', ' ',' ','*','*'},
        {' ',' ',' ',' ', ' ',' ','*','e'},
        };
         */
        static char[] path = new char[labyrinth.GetLength(0) * labyrinth.GetLength(1)];
        static int position = 0;

        static void Main(string[] args)
        {
            /*System.Console.Write("n = ");
            numberOfLoops = System.Int32.Parse(System.Console.ReadLine());

            System.Console.Write("k = ");
            numberOfIterations = System.Int32.Parse(System.Console.ReadLine());

            //System.Console.WriteLine("Recursive Fibonacci({0}) = {1}", numberOfLoops,
                //Fibonacci(numberOfLoops));

            loops = new int[numberOfLoops];
            numbers = new long[numberOfLoops + 2];
            numbers[1] = 1;
            numbers[2] = 1;

            //decimal factorialSum; //= FactorialRecursive(numberOfLoops);
            //long result = FibonacciEffectiveRecursive(numberOfLoops);


            //System.Console.WriteLine("Recursive {0}! = {1}", numberOfLoops, factorialSum);
            //System.Console.WriteLine("Effective recursive Fibonacci({0}) = {1}",
             numberOfLoops, result);

            /*factorialSum = 0;
            factorialSum = FactorialIterative(numberOfLoops);*/
            //result = FibonacciEffectiveIterative(numberOfLoops);

            //System.Console.WriteLine("Iterative {0}! = {1}", numberOfLoops, factorialSum);
            //System.Console.WriteLine("Effective iterative Fibonacci({0}) = {1}",
            //numberOfLoops, result);

            //NestedLoops(numberOfIterations);
            //NestedLoopsRecursive(0);
            //NestedLoopsIterative(0);

            FindPath(0, 0);

            System.Console.WriteLine("\nsaved route:\n");

            FindPathSaveRoute(0, 0, 'S');
        }


        static long Fibonacci(int n)
        {
            if (n <= 2)
            {
                return 1;
            }

            return Fibonacci(n - 1) + Fibonacci(n - 2);
        }


        static decimal FactorialRecursive(int number)
        {
            if (number == 0)
            {
                return 1;
            }
            else
            {
                return number * FactorialRecursive(number - 1);
            }
        }


        static decimal FactorialIterative(int number)
        {
            decimal result = 1;

            for (int index = 1; index <= number; index++)
            {
                result *= index;
            }

            return result;
        }


        static void NestedLoops(int number)
        {
            for (int indexFirst = 1; indexFirst <= number; indexFirst++)
            {
                for (int indexSecond = 1; indexSecond <= number; indexSecond++)
                {
                    for (int indexThird = 1; indexThird <= number; indexThird++)
                    {
                        System.Console.WriteLine("{0} {1} {2}", indexFirst, indexSecond,
                            indexThird);
                    }
                }
            }
        }


        static void NestedLoopsRecursive(int currentLoop)
        {
            if (currentLoop == numberOfLoops)
            {
                PrintLoops();

                return;
            }

            for (int counter = 1; counter <= numberOfIterations; counter++)
            {
                loops[currentLoop] = counter;

                NestedLoopsRecursive(currentLoop + 1);
            }
        }


        static void NestedLoopsIterative(int currentLoop)
        {
            InitLoops();

            int currentPosition = 0;

            while (true)
            {
                PrintLoops();

                currentPosition = numberOfLoops - 1;
                loops[currentPosition] = loops[currentPosition] + 1;

                while (loops[currentPosition] > numberOfIterations)
                {
                    loops[currentPosition] = 1;
                    currentPosition--;

                    if (currentPosition < 0)
                    {
                        return;
                    }

                    loops[currentPosition] = loops[currentPosition] + 1;
                }
            }
        }


        static void InitLoops()
        {
	        for (int index = 0; index < numberOfLoops; index++)
	        {
		        loops[index] = 1;
	        }
        }


        static void PrintLoops()
        {
            for (int index = 0; index < numberOfLoops; index++)
            {
                System.Console.Write("{0} ", loops[index]);
            }

            System.Console.WriteLine();
        }


        static long FibonacciEffectiveRecursive(int number)
        {
            if (0 == numbers[number])
            {
                numbers[number] = FibonacciEffectiveRecursive(number - 1) +
                    FibonacciEffectiveRecursive(number - 2);
            }

            return numbers[number];
        }


        static long FibonacciEffectiveIterative(int number)
        {
            long numberFibonacci = 1;
            long numberFibonacciMinusOne = 1;
            long numberFibonacciMinusTwo = 1;

            for (int index = 2; index < number; index++)
            {
                numberFibonacci = numberFibonacciMinusOne + numberFibonacciMinusTwo;

                numberFibonacciMinusTwo = numberFibonacciMinusOne;
                numberFibonacciMinusOne = numberFibonacci;
            }

            return numberFibonacci;
        }


        static void FindPath(int row, int col)
        {
            if ((col < 0) || (row < 0) || (col >= labyrinth.GetLength(1)) ||
                (row >= labyrinth.GetLength(0)))
            {
                return;
            }

            if (labyrinth[row, col] == 'e')
            {
                System.Console.WriteLine("Found the exit!");
            }

            if (labyrinth[row, col] != ' ')
            {
                return;
            }

            labyrinth[row, col] = 's';

            FindPath(row, col - 1);
            FindPath(row - 1, col);
            FindPath(row, col + 1);
            FindPath(row + 1, col);

            labyrinth[row, col] = ' ';
        }


        static void FindPathSaveRoute(int row, int col, char direction)
        {
            if ((col < 0) || (row < 0) || (col >= labyrinth.GetLength(1)) ||
                (row >= labyrinth.GetLength(0)))
            {
                return;
            }

            path[position] = direction;
            position++;

            if (labyrinth[row, col] == 'e')
            {
                PrintPath(path, 1, position - 1);
            }

            if (labyrinth[row, col] == ' ')
            {
                labyrinth[row, col] = 's';

                FindPathSaveRoute(row, col - 1, 'L');
                FindPathSaveRoute(row - 1, col, 'U');
                FindPathSaveRoute(row, col + 1, 'R');
                FindPathSaveRoute(row + 1, col, 'D');

                labyrinth[row, col] = ' '; //without this - improved, effective, only 1 path or if there is no path
            }

            position--;
        }


        static void PrintPath(char[] path, int startPosition, int endPosition)
        {
            System.Console.WriteLine("Found the exit!");
            System.Console.Write("Path: ");

            for (int position = startPosition; position < endPosition; position++)
            {
                System.Console.Write(path[position]);
            }

            System.Console.WriteLine();
        }

    }
}
