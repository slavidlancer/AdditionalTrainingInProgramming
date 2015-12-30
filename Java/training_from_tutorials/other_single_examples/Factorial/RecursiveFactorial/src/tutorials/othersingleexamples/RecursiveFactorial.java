package tutorials.othersingleexamples;

import java.util.Scanner;

public class RecursiveFactorial {
    public static long factorial(int n) {
        if (n == 0) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("n = ");
        int n = input.nextInt();

        long factorial = factorial(n);
        System.out.printf("%d! = %d%n", n, factorial);
        input.close();
    }
}
