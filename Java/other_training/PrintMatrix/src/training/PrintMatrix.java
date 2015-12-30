package training;

import java.util.Arrays;
import java.util.Scanner;

public class PrintMatrix {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String[] numbers = {"one", "two", "three", "four"};

        for (String number : numbers) {
            System.out.printf("%s\t", number);
        }

        System.out.print("\nEnter number: ");
        int number = input.nextInt();

        System.out.printf("and string:\n");
        String inputString = input.nextLine();

        System.out.printf("%d %s\n", number, inputString);

        int[][] matrix = { //2x3
                {1, 2, 3}, //row0
                {4, 5, 6} //row1
        };

        double testDoubles[][] = { {1.23, 2.34, 3.13, 4.56}, {5.67, 6.78, 7.89},
                {8.90, 9.12} };
        System.out.print(testDoubles[1][2] + System.lineSeparator());

        for (int row = 0; row < matrix.length; row++) {
            for (int col = 0; col < matrix[0].length; col++) {
                System.out.printf("%d ", matrix[row][col]);
            }

            System.out.println();
        }

        int rows = input.nextInt();
        int cols = input.nextInt();

        int[][] checkMatrix = new int[rows][cols];

        for (int row = 0; row < checkMatrix.length; row++) {
            for (int col = 0; col < checkMatrix[0].length; col++) {
                System.out.printf("matrix[%d][%d]= ", row, col);

                checkMatrix[row][col] = input.nextInt();
            }

            System.out.println();
        }

        System.out.println(Arrays.deepToString(checkMatrix));
    }
}
