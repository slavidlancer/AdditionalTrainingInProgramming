package tutorials._classes;

public class Kid {
    public static void callTheDog(Dog dog) {
        System.out.println("Come, " + dog.getName());
    }

    public static void wagTheDog(Dog dog) {
        dog.bark();
    }
}
