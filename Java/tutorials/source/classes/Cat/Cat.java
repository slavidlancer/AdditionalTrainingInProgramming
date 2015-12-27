public class Cat {
	// Field name
	private String name;
	// Field color
	private String color;
	// Getter of property name
	public String getName() {
		return this.name;
	}
	// Setter of property name
	public void setName(String name) {
		this.name = name;
	}
	// Getter of property color
	public String getColor() {
		return this.color;
	}
	// Setter of property color
	public void setColor(String color) {
		this.color = color;
	}
	// Default constructor
	public Cat() {
		this.name = "Unnamed";
		this.color = "gray";
	}
	// Constructor with parameters
	public Cat(String name, String color) {
		this.name = name;
		this.color = color;
	}
	// Method sayMiau
	public void sayMiau() {
		System.out.printf("Cat %s said: Miauuuuuu!%n", name);
	}
}

public static void main(String[] args) {
	Cat myCat = new Cat();
	myCat.name = "Alfred";

	System.out.println("The name of my cat is %s.",myCat.name);
}

/*
Cat myCat = new Cat();
myCat.name = "Alfred";

System.out.println("The name of my cat is %s.%n",
		myCat.name);

myCat.sayMiau();
*/

/*
Cat someCat = new Cat();
someCat.sayMiau();

System.out.println("The color of cat %s is %s.%n",
		someCat.name, someCat.color);

Cat myBrownCat = new Cat("Johnny", "brown");

myBrownCat.sayMiau();

System.out.println("The color of cat %s is %s.%n",
		myBrownCat.name, myBrownCat.color);
*/
