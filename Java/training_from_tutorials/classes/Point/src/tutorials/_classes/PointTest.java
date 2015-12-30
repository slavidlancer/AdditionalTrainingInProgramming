package tutorials._classes;

public class PointTest {
    public static void main(String[] args) {
        Point myPoint = new Point(2, 3);
        double myPointXCoordinate = myPoint.getX();
        double myPointYCoordinate = myPoint.getY();

        System.out.println("The X coordinate is: " + myPointXCoordinate);
        System.out.println("The Y coordinate is: " + myPointYCoordinate);

        PointArray pointArray = new PointArray(3, 2);
        double myPointArrayXCoordinate = pointArray.getX();
        double myPointArrayYCoordinate = pointArray.getY();

        System.out.println("The X coordinate is: " + myPointArrayXCoordinate);
        System.out.println("The Y coordinate is: " + myPointArrayYCoordinate);
    }
}
