// Class declaration
public class Dog { // Openening brace of the class body
	//final int age = 5;
	// Property-field definition
	private String name;
	private int age;
	private double length;
	private Collar collar;

	static int dogCount = 0;

	// Constructor definition
	public Dog() {
		this.name = "Sharo";
		this.age = 3;
		this.length = 0.5;
		this.collar = new Collar();

		dogCount += 1;
	}
	// Constructor definition
	public Dog(String name) {
		this.name = name;
	}

	public Dog(String dogName, int dogAge, double dogLength) {
		name = dogName;
		age = dogAge;
		length = dogLength;
		collar = new Collar();
	}

	// Property getter-method definition
	public String getName() {
		return this.name;
	}
	// Property setter-method definition
	public void setName(String name) {
		this.name = name;
	}
	// Method definition
	public void bark() {
		System.out.printf("Dog %s said: Wow-wow!%n", name);
	}

	public void doSth() {
		this.bark();
	}

	public void getInfo() {
		// Accessing instance variables – name and age
		System.out.print("Dog's name: " + this.name +
				"; age: " + this.age + "; often says: ");
		// Calling instance method
		this.bark();
	}
} // Closing brace of the class body


public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	System.out.print("Write first dog's name: ");
	String firstDogName = input.nextLine();
	// Assign dog name with a constructor
	Dog firstDog = new Dog(firstDogName);
	System.out.print("Write second dog's name: ");
	Dog secondDog = new Dog();
	// Assign dog name with a property
	secondDog.setName(input.nextLine());
	// Create a dog with a default name
	Dog thirdDog = new Dog();

	Dog[] dogs = new Dog[] { firstDog, secondDog, thirdDog };

	for (Dog dog : dogs) {
		dog.bark();
	}

	System.out.println("Dog count is now " + Dog.dogCount);
	dog.getInfo();
}

/*
public class Dog {
	String name;
	int age;
	int length;
	boolean isMale;

	public static void main(String[] args) {
		Dog dog = new Dog();
		System.out.println("Dog's name is: " + dog.name);
		System.out.println("Dog's age is: " + dog.age);
		System.out.println("Dog's length is: " + dog.length);
		System.out.println("Dog's is male: " + dog.isMale);		
	}
}
*/

/*
public static void main(String[] args) {
	Dog myDog = new Dog("Bobi", 2, 0.4); // Passing parameters

	System.out.println("My dog " + myDog.getName() +
			" is " + myDog.age + " year(s) old. " +
			" and it has length: " + myDog.length + " m");
}
*/
