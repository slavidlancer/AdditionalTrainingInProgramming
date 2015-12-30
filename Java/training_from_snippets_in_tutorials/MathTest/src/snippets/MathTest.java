package snippets;

import java.util.Scanner;

public class MathTest {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("side a: ");
        double a = input.nextDouble();

        System.out.print("side b: ");
        double b = input.nextDouble();

        System.out.print("angle: ");
        int angle = input.nextInt();

        double area = 0.50 * a * b * Math.sin(Math.toRadians(angle));

        System.out.printf("area: %.3f", area);
    }
}
