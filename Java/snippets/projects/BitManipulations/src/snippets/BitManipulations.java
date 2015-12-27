package snippets;

public class BitManipulations {
    public static void main(String[] args) {
        short aShort = 3; //0000 0011 = 3
        short bShort = 5; //0000 0101 = 5

        System.out.println(aShort | bShort); //0000 0111 = 7
        System.out.println(aShort & bShort); //0000 0001 = 1
        System.out.println(aShort ^ bShort); //0000 0110 = 6
        System.out.println(~aShort & bShort); //0000 0100 = 4
        System.out.println(aShort << 1); //0000 0110 = 6
        System.out.println(aShort << 2); //0000 1100 = 12
        System.out.println(aShort >> 1); //0000 0001 = 1
    }
}
