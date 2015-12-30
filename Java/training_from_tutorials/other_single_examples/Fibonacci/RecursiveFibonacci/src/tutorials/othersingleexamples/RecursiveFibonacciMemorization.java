package tutorials.othersingleexamples;

import java.util.Scanner;

public class RecursiveFibonacciMemorization {
    public static long[] numbers;

    public static long fibonacci(int n) {
        if (0 == numbers[n]) {
            numbers[n] = fibonacci(n - 1) + fibonacci(n - 2);
        }

        return numbers[n];
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("n = ");
        int n = input.nextInt();

        numbers = new long[n + 2];
        numbers[1] = 1;
        numbers[2] = 1;

        long result = fibonacci(n);
        System.out.printf("F%d = %d%n", n, result);
        input.close();
    }
}
