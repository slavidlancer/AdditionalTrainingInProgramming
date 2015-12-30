package training;

import java.util.Scanner;

public class ScanInput {
    private static String scan() {
        Scanner sc = new Scanner(System.in);
        String temp = sc.nextLine();

        sc.close();

        return temp;
    }

    public static void main(String[] args) {
        System.out.print("Enter text: ");

        String getResult = scan();

        System.out.println(getResult);
    }
}
