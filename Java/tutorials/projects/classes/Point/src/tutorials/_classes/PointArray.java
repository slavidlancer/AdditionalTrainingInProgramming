package tutorials._classes;

public class PointArray {
    private double[] coordinates;

    public PointArray(int x, int y) {
        this.coordinates = new double[2];
        this.coordinates[0] = x;
        this.coordinates[1] = y;
    }

    public double getX() {
        return this.coordinates[0];
    }

    public void setX(double x) {
        this.coordinates[0] = x;
    }

    public double getY() {
        return this.coordinates[1];
    }

    public void setY(double y) {
        this.coordinates[1] = y;
    }
}
