package training;

import java.util.Scanner;

public class MethodCalculation {
    private static long calculate(int ... elements) {
        long sum = 0;

        for (int i : elements) {
            sum += i;
        }

        return sum;
    }

    private static void print(String text) {
        System.out.println(text);
    }

    public static void main(String[] args) {
        String message = "sum: ";
        Scanner input = new Scanner(System.in);

        System.out.print("Enter matrix length: ");
        int length = input.nextInt();

        int[] array = new int[length];

        System.out.println("Enter numbers: ");

        for (int i = 0; i < length; i++) {
            array[i] = input.nextInt();
        }

        long sum = calculate(array);

        message += sum;

        print(message);
    }
}
