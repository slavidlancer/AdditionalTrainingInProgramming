public class Kid {
	public void callTheDog(Dog dog) {
		System.out.println("Come, " + dog.name);
	}

	public void wagTheDog(Dog dog) {
		dog.bark();
	}

	public static void main(String[] args) {
		// ... Constructor invocation ...
		Dog myDog = new Dog();
		System.out.println("My dog is called " + myDog.getName());
	}
}
