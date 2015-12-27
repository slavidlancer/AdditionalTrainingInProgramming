package tutorials._classes;

public class Cat {
    private String name;
    private String color;

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Cat() {
        this.name = "Unnamed";
        this.color = "gray";
    }

    public Cat(String name, String color) {
        this.name = name;
        this.color = color;
    }

    public void sayMiau() {
        System.out.printf("Cat %s said: Miauuuuuu!%n", name);
    }

    public static void main(String[] args) {
        Cat myCat = new Cat();
        myCat.name = "Alfred";
        Cat someCat = new Cat();
        Cat myBrownCat = new Cat("Johnny", "brown");

        System.out.printf("The name of my cat is %s.", myCat.name);

        someCat.sayMiau();

        System.out.printf("The color of cat %s is %s.%n", someCat.name,
                someCat.color);

        myBrownCat.sayMiau();

        System.out.printf("The color of cat %s is %s.%n", myBrownCat.name,
                myBrownCat.color);
    }
}
