public class MathClass {
	public static final double PI = 3.141592653589793;
	// P = 2 * PI * r

	public static double getCirclePerimeter(double r) {
	// Accessing the static variable PI from static method
		return (2 * PI * r);
	}

	public static void main(String[] args) {
		double radius = 5;
		// Accessing static method from other static method
		double circlePerimeter = getCirclePerimeter(radius);
		System.out.println("Circle with radius " + radius +
				" has perimeter: " + circlePerimeter);
	}
}
