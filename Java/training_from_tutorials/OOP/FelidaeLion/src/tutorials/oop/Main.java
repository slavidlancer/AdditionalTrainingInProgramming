package tutorials.oop;

public class Main {
    public static void main(String[] args) {
        Felidae lion = new Lion(true, 2);
        AfricanLion africanLion = new AfricanLion(false, 1);
        Lion anotherAfricanLion = new AfricanLion(true, 1);

        System.out.println(lion + " " + africanLion + " " + anotherAfricanLion);
    }
}
