package snippets;

import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        Dog dogInstance = new Dog("", 1, 0.0, new Collar(), "a", "b", "c", "d");
        String name = dogInstance.getName();
        int age = dogInstance.getAge();
        double length = dogInstance.getLength();
        Collar collar = dogInstance.getCollar();
        String[] friends = dogInstance.getFriends();
        String[] stringArray = {"w", "x", "y", "z"};

        System.out.println("'" + name + "' " + age + " " + length + " " +
                collar.getName() + " " + Arrays.deepToString(friends));

        dogInstance.setName("name");
        dogInstance.setAge(++age);
        dogInstance.setLength(0.87);
        dogInstance.setCollar(new Collar("empty"));
        dogInstance.setFriends(stringArray);

        name = dogInstance.getName();
        age = dogInstance.getAge();
        length = dogInstance.getLength();
        collar = dogInstance.getCollar();
        friends = dogInstance.getFriends();

        System.out.println("'" + name + "' " + age + " " + length + " " +
                collar.getName() + " " + Arrays.deepToString(friends));

        System.out.println(dogInstance.calculateDog(age, length));
    }
}
