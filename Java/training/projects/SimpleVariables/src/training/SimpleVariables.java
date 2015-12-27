package training;

public class SimpleVariables {
    public static void main(String[] args) {
        byte byteVar = -115;
        byte byteVarSecond = 97;
        short shortVar = 5213;
        short shortVarSecond = -10000;
        int intVar = 4825932;
        int intVarSecond = 52130;
        int varHex = 0x100;
        float floatVar = 12.345f;
        float floatVarSecond = 3546.091f;
        double doubleVar = 34.567839023;
        double doubleVarSecond = 8923.1234857;
        boolean isFalse = true;
        String stringVar = "Hello";
        String stringVarSecond = "World";
        Object objectVar = stringVar + " " + stringVarSecond;
        String stringVarThird = (String)objectVar;
        String stringVarFourth = "The \"use\" of quotations.";

        System.out.println(byteVar + " " + byteVarSecond + " " + shortVar +
                " " + shortVarSecond + " " + intVar + " " + intVarSecond +
                " " + varHex + " " + floatVar + " " + floatVarSecond + " "
                + doubleVar + " " + doubleVarSecond + " " + stringVarThird
                + " " + stringVarFourth);
        System.out.println(isFalse);
        System.out.println(objectVar);
    }
}
