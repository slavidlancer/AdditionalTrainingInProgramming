package tutorials._classes;

public class AnonymousClassExample {
    public static void main(String[] args) {
        //throws ClassNotFoundException
        new Object() {
            void printSomething() {
                System.out.println("anonymous class");
            }
        }.printSomething();
    }
}
