package training;

import java.util.Scanner;

public class BitManipulations {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        short bitValue = 140; //10001100
        byte byteValue;

        System.out.println(((bitValue & 8) != 0) ? "1" : "0");

        System.out.println("enter number:");
        byte number = input.nextByte();

        System.out.println("enter position:");
        byte position = input.nextByte();

        int mask = 1 << position;

        if ((number & mask) != 0) {
            System.out.println("byte = 1");
        } else {
            System.out.println("byte = 0");
        }

        mask = 1;
        mask <<= position;

        do {
            System.out.println("enter (0/1):");
            byteValue = input.nextByte();
        } while ((byteValue < 0) || (byteValue > 1));

        if (byteValue == 1) {
            if ((number & position) != 0) {
                System.out.println(number);
            } else {
                number |= mask;

                System.out.println(number);
            }
        } else if (byteValue == 0) {
            mask = ~mask;
            number &= mask;

            System.out.println(number);
        }
    }
}
