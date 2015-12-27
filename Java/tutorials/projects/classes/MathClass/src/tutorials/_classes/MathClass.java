package tutorials._classes;

public class MathClass {
    public static final double PI = 3.141592653589793;
    //P = 2 * PI * r

    public static double getCirclePerimeter(double r) {
        double result = 2 * PI * r;

        return result;
    }

    public static void main(String[] args) {
        double radius = 5;
        double circlePerimeter = getCirclePerimeter(radius);

        System.out.println("Circle with radius " + radius +
                " has perimeter: " + circlePerimeter);
    }
}
