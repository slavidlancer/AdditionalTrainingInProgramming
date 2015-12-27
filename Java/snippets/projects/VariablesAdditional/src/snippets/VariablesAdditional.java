package snippets;

public class VariablesAdditional {
    public static void main(String[] args) {
        long longNumber = Long.MAX_VALUE;
        float realNumber = 1.25e+1f;
        boolean areEqual = (longNumber == realNumber);
        char symbol = 'a';
        Object container = 5;
        Object containerSecond = "Five";
        String name = "";
        byte[] bytes = {1, 2, 3};
        char symbolAnother = '\u003A';
        char symbolOther = '\\';
        int a = 5;
        int b = 4;
        int charIndex = (int) symbol - (int) 'A';



        System.out.print(longNumber + " = ");
        System.out.printf("%.5f? ", realNumber);
        System.out.println(areEqual);

        System.out.println("The code of '" + symbol + "' is: " + (int) symbol);

        System.out.println(containerSecond + " = " + container);

        System.out.println(symbolAnother + " " + symbolOther);

        for (int i : bytes) {
            System.out.print(i + " ");
        }

        System.out.println(name);
        System.out.println(a + (++b));

        System.out.println(a > b ? "a > b" : "a <= b");

        System.out.println(charIndex);
    }
}
