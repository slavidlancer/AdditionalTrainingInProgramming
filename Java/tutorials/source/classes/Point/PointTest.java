public class PointTest {
	public static void main(String[] args) {
		Point myPoint = new Point(2, 3);
		double myPointXCoordinate = myPoint.getX(); // Access
		double myPointYCoordinate = myPoint.getY(); // Access

		System.out.println("The X coordinate is: " +
				myPointXCoordinate);
		System.out.println("The Y coordinate is: " +
				myPointYCoordinate);
	}
}
