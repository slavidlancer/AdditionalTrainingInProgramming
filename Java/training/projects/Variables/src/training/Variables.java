package training;

import java.util.Arrays;

public class Variables {
    static final float PI = 3.1415f;

    public static void main(String[] args) {
        byte centuries = 20;
        byte[] byteArray = {1, 2, 3};
        short years = 2000;
        short a = 3;
        short b = -4;
        int days = 730480;
        int tValue = 6;
        int[] numArray = {1, 2, 3, 4, 5, 6, 7};
        int[] intArray = new int[5];
        intArray[0] = 1;
        double[][] massive = new double[][]{
                {1, 2, 3, 4, 5, 6, 7},
                {7, 6, 5, 4, 3, 2, 1}
        };
        long hours = 17531520;
        float floatValue = 20.1f;
        double doubleValue = 20.19d;
        boolean areEqual = false;
        char charValue = '`';
        int hexValue = 0xABCD;
        double eNotationValue = 1.25e+5;
        double piValue = Math.PI;
        String name = "name value";
        String nameString = new String();
        Object container = "number " + 0.1f;

        System.out.println(centuries + " centuries is " + years + " years, or "
                + days + " days, or " + hours + " hours.");
        System.out.println(floatValue + " " + doubleValue + " " + areEqual +
                " " + charValue);
        System.out.println(name + " " + byteArray + " "  + hexValue
                + " "  + eNotationValue + " "  + container);

        for (byte byteValue : byteArray) {
            System.out.print(byteValue + " ");
        }

        System.out.println();

        for (int i : numArray) {
            System.out.printf("%d ", i);
        }

        areEqual = (floatValue == doubleValue);
        System.out.println("\n" + areEqual);

        System.out.println((tValue == 6) ? (tValue |= 1) : (tValue /= 1));

        System.out.println(nameString instanceof String);

        System.out.println(~a + " " + ~b);

        System.out.print("string\n");
        System.out.printf("%s\n", name);

        System.out.printf("%.2f %f%n", PI, piValue);

        System.out.printf("The time is %1$tH:%1$tM:%1$tS.\n",
                new java.util.Date());
        System.out.printf("The date is %1$td:%1$tm:%1$tY.\n",
                new java.util.Date());
        System.out.printf("%1$tA, %1$tB\n", new java.util.Date());

        System.out.printf(java.util.Locale.getDefault().toString() +
                System.lineSeparator());

        int sumArray = 0;
        int length = intArray.length;

        for (int i = 0; i < length; i++) {
            intArray[i] = (i % 2) + (length/(sumArray + 2)) + i;

            System.out.printf("%d ", intArray[i]);

            sumArray += intArray[i];
        }

        intArray[2] = 7;
        int maxArray = intArray[0];

        for (int i = 1; i < length; i++) {
            if (intArray[i] > intArray[i - 1]) {
                maxArray = intArray[i];
            }
        }

        System.out.print("\n" + sumArray + " " + maxArray);

        System.out.printf("\n");

        System.out.println(Arrays.toString(massive[0]));
        System.out.println(Arrays.toString(massive[1]));

        System.err.println("This is an error!");
    }
}
