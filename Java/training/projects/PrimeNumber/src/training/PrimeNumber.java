package training;

import java.util.Scanner;

public class PrimeNumber {
    public static void main(String[] args) {
        int number;
        boolean flag = true;
        Scanner input = new Scanner(System.in);

        do {
            System.out.println("Enter number (1 - 99):");

            number = input.nextInt();
        } while ((number <= 0) || (number >= 100));

        for (int i = 2; i <= (byte) Math.sqrt(number); i++) {
            if (number % i == 0) {
                flag = false;

                break;
            }
        }

        System.out.print(number);
        System.out.println(flag ? " is prime" : " is not prime");
    }
}
