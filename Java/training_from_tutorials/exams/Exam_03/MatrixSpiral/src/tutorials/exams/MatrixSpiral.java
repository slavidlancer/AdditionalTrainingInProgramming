package tutorials.exams;

import java.util.Scanner;

public class MatrixSpiral {
    public static void printMatrix(int[][] matrix, int n) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.printf("%3d ", matrix[i][j]);
            }

            System.out.println();
        }
    }

    public static void fillMatrix(int[][] matrix, int n) {
        int count = n * n;
        int positionX = n / 2;
        int positionY = n % 2 == 0 ? n / 2 - 1 : n / 2;
        int direction = 0;
        int stepsCount = 1;
        int stepPosition = 0;
        int stepChange = 0;

        for (int i = 0; i < count; i++) {
            matrix[positionY][positionX] = i;

            if (stepPosition < stepsCount) {
                stepPosition++;
            } else {
                stepPosition = 1;

                if(stepChange == 1) {
                    stepsCount++;
                }

                stepChange = (stepChange + 1) % 2;
                direction = (direction + 1) % 4;
            }

            switch (direction) {
                case 0: {
                    positionY++;

                    break;
                }

                case 1: {
                    positionX--;

                    break;
                }

                case 2: {
                    positionY--;

                    break;
                }

                case 3: {
                    positionX++;

                    break;
                }
            }
        }
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("N = ");
        int n = input.nextInt();

        int[][] matrix = new int[n][n];

        fillMatrix(matrix, n);
        printMatrix(matrix, n);
    }
}
