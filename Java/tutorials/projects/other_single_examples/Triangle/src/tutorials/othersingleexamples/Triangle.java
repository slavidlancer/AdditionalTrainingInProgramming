package tutorials.othersingleexamples;

import java.util.Scanner;

public class Triangle {
    private static void printTriangle(int n) {
        for (int line = 1; line <= n; line++) {
            printLine(1, line);
        }

        for (int line = n - 1; line >= 1; line--) {
            printLine(1, line);
        }
    }

    private static void printLine(int start, int end) {
        for (int i = start; i <= end; i++) {
            System.out.print(" " + i);
        }

        System.out.println();
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter n: ");
        int n = input.nextInt();

        input.close();
        System.out.println();

        printTriangle(n);
    }
}
