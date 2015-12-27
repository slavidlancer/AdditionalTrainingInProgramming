package tutorials.othersingleexamples;

public class MaxPlatform2x2 {
    public static void main(String[] args) {
        int[][] matrix = {
                { 0, 2, 4, 0, 9, 5 },
                { 7, 1, 3, 3, 2, 1 },
                { 1, 3, 9, 8, 5, 6 },
                { 4, 6, 7, 9, 1, 0 }
        };

        int bestSum = Integer.MIN_VALUE;
        int bestRow = 0;
        int bestCol = 0;

        for (int row = 0; row < matrix.length - 1; row++) {
            for (int col = 0; col < matrix[0].length - 1; col++) {
                int upLeft = matrix[row][col];
                int upRight = matrix[row][col + 1];
                int downLeft = matrix[row + 1][col];
                int downRight = matrix[row + 1][col + 1];

                int sum = upLeft + upRight + downLeft + downRight;

                if (sum > bestSum) {
                    bestSum = sum;
                    bestRow = row;
                    bestCol = col;
                }
            }
        }

        int bestUpLeft = matrix[bestRow][bestCol];
        int bestUpRight = matrix[bestRow][bestCol + 1];
        int bestDownLeft = matrix[bestRow + 1][bestCol];
        int bestDownRight = matrix[bestRow + 1][bestCol + 1];

        System.out.println("The best platform is:");
        System.out.printf(" %d %d%n", bestUpLeft, bestUpRight);
        System.out.printf(" %d %d%n", bestDownLeft, bestDownRight);
        System.out.printf("The maximal sum is: %d%n", bestSum);
    }
}
