package snippets;

public class Dog {
    public static final double PI = Math.PI;
    public static final double E = Math.E;
    public static final char PATH_SEPARATOR = '/';
    public static final String BIG_COFFEE = "big";
    public static final int MAX_VALUE = Integer.MAX_VALUE;

    private String name;
    private int age;
    private double length;
    private Collar collar;
    private String[] friends;


    public Dog() {
        this("dog name");
    }

    public Dog(String name) {
        this(name, 1);
    }

    public Dog(String name, int age) {
        this(name, age, 1.23);
    }

    public Dog(String name, int age, double length) {
        this(name, age, length, new Collar());
    }

    public Dog(String name, int age, double length, Collar collar) {
        this.name = name;
        this.age = age;
        this.length = length;
        this.collar = collar;
    }

    public Dog(String name, int age, double length, Collar collar,
               String ... friends) {
        this.name = name;
        this.age = age;
        this.length = length;
        this.collar = collar;
        this.friends = friends;
    }


    public String getName() {
        return name;
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

    public Collar getCollar() {
        return collar;
    }

    public void setCollar(Collar collar) {
        this.collar = collar;
    }

    public String[] getFriends() {
        return friends;
    }

    public void setFriends(String[] friends) {
        this.friends = friends;
    }


    public double calculateDog(final int age, final double length) {
        double result = age * length;

        return result;
    }
}
