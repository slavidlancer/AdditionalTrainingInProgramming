package training;

import java.util.Scanner;

public class CircleRectangleInAndOut {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("enter first value: ");
        short firstValue = input.nextShort();

        System.out.println("enter second value: ");
        short secondValue = input.nextShort();

        if ((Math.sqrt((firstValue * firstValue) +
                (secondValue * secondValue)) < 5) && ((firstValue < -1)
                || (firstValue > 5)) && ((secondValue < 1)
                || (secondValue > 5))) {
            System.out.println("O (" + firstValue + ", " + secondValue +
                    ") is in circle and out of rectangle");
        } else if ((Math.sqrt((firstValue * firstValue) +
                (secondValue * secondValue)) < 5)) {
            System.out.println("O(" + firstValue + ", " + secondValue
                    + ") is in circle and not out of rectangle");
        } else {
            System.out.println("O (" + firstValue + ", " + secondValue
                    + ") is not in circle and not out of rectangle");
        }
    }
}
