package tutorials._classes;

public class Dog {
    //final int age = 5;

    private String name;
    private int age;
    private double length;
    private Collar collar;

    static int dogCount = 0;

    public Dog() {
        this.name = "Sharo";
        this.age = 3;
        this.length = 0.5;
        this.collar = new Collar();

        dogCount += 1;
    }

    public Dog(String name) {
        this.name = name;
    }

    public Dog(String dogName, int dogAge, double dogLength) {
        name = dogName;
        age = dogAge;
        length = dogLength;
        collar = new Collar();
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getLength() {
        return length;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public void bark() {
        System.out.printf("Dog %s said: Wow-wow!%n", this.name);
    }

    public void doSth() {
        this.bark();
    }

    public void getInfo() {
        System.out.print("Dog's name: " + this.name + "; age: " + this.age +
                "; often says:\n");

        this.bark();
    }
}
