package snippets;

public class MathUtils {
    public static final double PI_VALUE = 3.14159206;

    public static double calculateCircleArea(double radius) {
        double area = PI_VALUE * radius * radius;

        return area;
    }

    public static double calculateCirclePerimeter(double radius) {
        double perimeter = 2 * PI_VALUE * radius;

        return perimeter;
    }

    public static double calculateElipseArea(double axis1, double axis2) {
        double area = PI_VALUE * axis1 * axis2;

        return area;
    }

    public static double calculations(int state) {
        int length = (int) (state + (PI_VALUE * PI_VALUE));
        double first = 0;

        if (state == 0) {
            for (int i = 0; i < length; i++) {
                for (int j = 0; j < length; j++) {
                    double radius = (i + j) / 2;
                    first += calculateCircleArea(radius);
                }
            }
        } else {
            System.err.println("error");
        }

        return first;
    }

    public static void printValue(int value) {
        switch (value) {
            case 1:
                System.out.println("one");
                break;
            case 2:
                System.out.println("two");
                break;
            case 3:
                System.out.println("three");
                break;
            case 4:
                System.out.println("four");
                break;
            default:
                System.out.println("unknown");
                break;
        }
    }
}
