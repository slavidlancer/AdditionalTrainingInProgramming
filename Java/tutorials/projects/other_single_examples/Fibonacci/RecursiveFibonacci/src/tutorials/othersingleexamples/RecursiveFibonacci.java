package tutorials.othersingleexamples;

import java.util.Scanner;

public class RecursiveFibonacci {
    public static long fibonacci(int n) {
        if (n <= 2) {
            return 1;
        }

        return fibonacci(n - 1) + fibonacci(n - 2);
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("n = ");
        int n = input.nextInt();

        long result = fibonacci(n);
        System.out.printf("F%d = %d%n", n, result);
        input.close();
    }
}
