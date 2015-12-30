package snippets;

public class BitManipulationsOther {
    public static void main(String[] args) {
        byte byteValue = 6 & 5; //00000110 & 00000101 = 00000100
        byte byteValueSecond = 7 | 9; //00000111 | 00001001 = 00001111
        byte byteValueThird = 5 ^ 4; //00000101 ^ 00000100 = 00000001

        System.out.println(byteValue + " " + byteValueSecond + " " +
                byteValueThird);
    }
}
