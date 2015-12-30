package training;

public class ConsoleRead {
    public static void main(String[] args)
            throws java.io.IOException {
        int ch;

        System.out.print("Enter number: ");

        while ((ch = System.in.read()) != '\n') {
            System.out.print((char) ch);
        }

        System.out.print("\nEnter text: ");

        java.util.Scanner input = new java.util.Scanner(System.in);
        String name = input.nextLine();

        System.out.println(name);

        System.out.print("\nEnter text: ");

        java.io.BufferedReader bf = new java.io.BufferedReader(
                new java.io.InputStreamReader(System.in));
        String lastName = bf.readLine();

        System.out.println(lastName);
    }
}
