public class PointArray {
	private double[] coordinates;

	public PointArray(int x, int y) {
		coordinates = new double[2];
		// Initializing the x coordinate
		coordinates[0] = x;
		// Initializing the y coordinate
		coordinates[1] = y;
	}

	public double getX() {
		return coordinates[0];
	}

	public void setX(double x) {
		coordinates[0] = x;
	}

	public double getY() {
		return coordinates[1];
	}

	public void setY(double y) {
		coordinates[1] = y;
	}
}
