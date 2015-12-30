package training;

import java.util.Scanner;

public class Expressions {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double sideA = 5.20;
        double sideB = 2.35;
        double sideH = 12.91;
        double perimeter = (2 * sideA) + (2 * sideB);
        double surface = sideA * sideB;
        double surfaceTrapezium = ((sideA + sideB)/2) * sideH;

        System.out.printf("perimeter = %.2f\n", perimeter);
        System.out.printf("surface = %.2f%n", surface);
        System.out.printf("surface = %.2f%n", surfaceTrapezium);

        int a = 14735;
        int b = a % 2;

        System.out.println(b == 0 ? "even" : "odd" );

        if ((a % 5 == 0) && (a % 7 == 0)) {
            System.out.println("a % 5 == 0 && a % 7 == 0");
        }

        if (((a / 100) % 10) == 7) {
            System.out.println("7");
        }

        System.out.print("Enter value: ");
        int number = input.nextInt();
        number *= 0.17;

        System.out.println(number);

        System.out.print("Enter value: ");
        short shortVar = input.nextShort();
        int tempA = shortVar / 1000;
        int tempB = (shortVar % 1000) / 100;
        int tempC = (shortVar % 100) / 10;
        int tempD = shortVar % 10;

        System.out.println(tempA + tempB + tempC + tempD);
        System.out.println(tempD + " " + tempC + " " + tempB + " " + tempA);
        System.out.println(tempD + " " + tempA + " " + tempB + " " + tempC);
        System.out.println(tempA + " " + tempC + " " + tempB + " " + tempD);
    }
}
