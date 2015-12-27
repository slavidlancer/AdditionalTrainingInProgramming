public class Boo {
	private static String staticVariable = "test";

	public static void doSomething() {
		System.out.println("doSomething() method execution.");
	}

	public void printStaticClassElements() {
		// Accessing static variable from non-static method
		System.out.println("staticVaruable: "
			+ Boo.staticVariable);
		// Accessing static method from non-static method
		Boo.doSomething();
	}

	public static void main(String[] args) {
		Boo booInstance = new Boo();
		booInstance.printStaticClassElements();
	}
}
