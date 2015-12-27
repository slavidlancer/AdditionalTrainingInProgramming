package tutorials._classes;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Write first dog's name: ");

        String firstDogName = input.nextLine();

        Dog firstDog = new Dog(firstDogName);

        System.out.print("Write second dog's name: ");

        Dog secondDog = new Dog();

        secondDog.setName(input.nextLine());

        Dog thirdDog = new Dog();

        Dog[] dogs = new Dog[] { firstDog, secondDog, thirdDog };

        for (Dog dog : dogs) {
            dog.bark();
        }

        System.out.println("Dog count is now " + Dog.dogCount);

        firstDog.getInfo();
        secondDog.doSth();

        Dog myDog = new Dog("Bobi", 2, 0.4);

        System.out.println("My dog " + myDog.getName() + " is " +
                myDog.getAge() + " year(s) old. " + " and it has length: " +
                myDog.getLength() + " m.");

        Kid.callTheDog(myDog);
        Kid.wagTheDog(myDog);
    }
}
