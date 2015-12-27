//import java.util.Scanner;
import java.util.Random;

public class UsefullCode {
	private static final String CAPITAL_LETTERS =
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	public static void main(String args[]) {
		String[] array = { "one", "two", "three", "four" };

		System.out.println(java.util.Arrays.toString(array));

		int[][] matrix = {
			{ 0, 2, 4, 0, 9, 5 },
			{ 7, 1, 3, 3, 2, 1 },
			{ 1, 3, 9, 8, 5, 6 },
			{ 4, 6, 7, 9, 1, 0 }
		};

		// Find the maximal sum platform of size 2 x 2
		int bestSum = Integer.MIN_VALUE;
		int bestRow = 0;
		int bestCol = 0;

		for (int row = 0; row < matrix.length - 1; row++) {
			for (int col = 0; col < matrix[0].length - 1; col++) {
				int sum = matrix[row][col] + matrix[row][col + 1]
					+ matrix[row + 1][col] + matrix[row + 1][col + 1];

				if (sum > bestSum) {
					bestSum = sum;
					bestRow = row;
					bestCol = col;
				}
			}
		}

		// Print the result
		System.out.println("The best platform is:");
		System.out.printf(" %d %d%n",
			matrix[bestRow][bestCol],
			matrix[bestRow][bestCol + 1]);

		System.out.printf(" %d %d%n",
			matrix[bestRow + 1][bestCol],
			matrix[bestRow + 1][bestCol + 1]);

		System.out.printf("The maximal sum is: %d%n", bestSum);

		double sum = 0.0d;
		BigDecimal bdValue = new BigDecimal("0.1");
		BigDecimal bdSum = new BigDecimal("0.0");

		for(int i=1; i<=10; i++) {
			sum += 0.1d;
			bdSum = bdSum.add(bdValue);
		}

		System.out.println("Double sum is: " + sum);
		System.out.println("BigDecimal sum is: " + bdSum);

		double result = getRectagnleArea(2.43, 6.54);

		double[] prices = new double[] { 3, 2.5 };

		printTotalAmountForBooks(prices);
		printTotalAmountForBooks(3, 2.5);
		printTotalAmountForBooks(3, 5.1, 10, 4.5);

		long sum = calcSum(2, 5);
		System.out.println(sum);

		long sum2 = calcSum(4, 0, -2, 12);
		System.out.println(sum2);

		long sum3 = calcSum();
		System.out.println(sum3);

		String firstWord = input.next("\\w+");

		long factorial = calcFactorial(n);
		System.out.printf("%d! = %d", n, factorial);

		System.out.printf("Today is %1$td.%1$tm.%1$tY\n",
			LocalDate.now()); // Today is 10.05.2014

		System.out.printf("%1$d + %1$d = %2$d\n", 2, 4); // 2 + 2 = 4

		Random rand = new Random();

		for (int number = 1; number <= 6; number++) {
			int randomNumber = rand.nextInt(49) + 1;

			System.out.printf("%d ", randomNumber);
		}
	}


	public static double getRectagnleArea(double width, double height) {
		double area = width * height;

		return area;
	}

	public static void printSign(int number) {
		if (number > 0) {
			System.out.println("Positive");
		} else if (number < 0) {
			System.out.println("Negative");
		} else {
			System.out.println("Zero");
		}
	}

	public static void printTotalAmountForBooks(double[] prices) {
		double totalAmount = 0;

		for (double singleBookPrice : prices) {
			totalAmount += singleBookPrice;
		}

		System.out.println("The total amount of all books is: " +
			totalAmount);
	}

	public static long calcSum(int ... elements) {
		long sum = 0;

		for (int element : elements) {
			sum += element;
		}

		return sum;
	}

	public static int[] sort(int ... numbers) {
		// The sorting logic:
		for (int i = 0; i < numbers.length - 1; i++) {
			for (int j = i + 1; j < numbers.length; j++) {
				// Swapping the values
				if (numbers[i] > numbers[j]) {
					int tempVar = numbers[i];
					numbers[i] = numbers[j];
					numbers[j] = tempVar;
				}
			}
		} // End of the sorting logic

		return numbers;
	}

	private static long calcFactorial(int n) {
		if (n <= 1) {
			return 1;
		}
		return n * calcFactorial(n-1);
	}

	public static long calculateFibonacciNumbers(int n) {
		if (n <= 2) {
			return 1;
		}

		return calculateFibonacciNumbers(n - 1) + calculateFibonacciNumbers(n - 2);
	}
}
