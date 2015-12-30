package training;

import java.util.ArrayList;
import java.util.Scanner;

public class IntsDoublesParseInt {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        ArrayList<Integer> intArrayList = new ArrayList<Integer>();
        ArrayList<Double> doubleArrayList = new ArrayList<Double>();

        while (true) {
            System.out.println("Enter an int or a double:");

            if (input.hasNextInt()) {
                intArrayList.add(input.nextInt());
            } else if (input.hasNextDouble()) {
                doubleArrayList.add(input.nextDouble());
            } else {
                break;
            }
        }

        System.out.println("these ints are entered: "
                + intArrayList.toString());
        System.out.println("these doubles are entered: "
                + doubleArrayList.toString());

        Scanner newInput = new Scanner(System.in);
        System.out.print("Enter int number: ");

        try {
            int i = Integer.parseInt(newInput.nextLine());

            System.out.println("a valid integer number entered: " + i);
        } catch (NumberFormatException nfex) {
            System.err.println("Invalid integer number!\n" + nfex);
        }
    }
}
