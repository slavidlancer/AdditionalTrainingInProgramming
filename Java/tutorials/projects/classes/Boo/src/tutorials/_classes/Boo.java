package tutorials._classes;

public class Boo {
    private static String staticVariable = "test";

    public static void doSomething() {
        System.out.println("doSomething() method execution.");
    }

    public void printStaticClassElements() {
        System.out.println("staticVariable: " + Boo.staticVariable);

        Boo.doSomething();
    }

    public static void main(String[] args) {
        Boo booInstance = new Boo();

        booInstance.printStaticClassElements();
    }
}
