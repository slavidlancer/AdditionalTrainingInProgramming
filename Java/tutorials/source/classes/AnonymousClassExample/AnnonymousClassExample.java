public class AnnonymousClassExample {
	public static void main(String[] args) {
		new Object() {
			void printSomething() {
				System.out.println("I am annonymous class.");
			}
		}.printSomething();
	}
}
