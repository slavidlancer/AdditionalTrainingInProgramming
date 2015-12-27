import java.util.Scanner;

class TestApp {
	public static void main(String args[]) {
		Scanner input = new Scanner(System.in);

		String[] towns = {"one", "two", "three", "four"};

		System.out.print("1");
		System.out.println("2");

		int number = input.nextInt();

		String inputString = input.nextLine();

		System.out.printf("%d %s", number, inputString);

		for (String town : towns) {
			System.out.printf("%s", town);
		}

		int[][] matrix = { //2x3
			{1, 2, 3}, //row0
			{4, 5, 6}, //row1
		};

		double[][] testDoubles = { {1.23, 2.34, 3.13, 4.56}, {5.67, 6.78, 7.89}, {8.90, 9.12} };

		System.out.print(testDoubles[1][2]); //7.89

		for (int row = 0; row <= matrix.length; row++) {
			for (int col = 0; col <= matrix[0].length; col++) {
				System.out.printf("%d", matrix[row][col]);
			}

			System.out.println();
		}

		int rows = input.nextInt();
		int cols = input.nextInt();

		int checkMatrix[][] = new int[rows][cols];

		for (int row = 0; row <= rows; row++) {
			for (int col = 0; col <= cols; col++) {
				System.out.printf("matrix[%d][%d] =", row, col);

				matrix[row][col] = input.nextInt();
			}

			System.out.println();
		}

		System.out.println(Arrays.deepToString(checkMatrix));
	}
}
