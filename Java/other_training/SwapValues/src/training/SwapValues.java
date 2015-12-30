package training;

public class SwapValues {
    public static void main(String[] args) {
        int a = 5;
        int b = a * a;
        int temp;

        System.out.println(a + " " + b);

        if (a > b) {
            temp = a;
            a = b;
            b = temp;
        } else if (a < b) {
            temp = b;
            b = a;
            a = temp;
        }

        System.out.println(a + " " + b);
    }
}
