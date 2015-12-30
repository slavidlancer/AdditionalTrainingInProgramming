package tutorials.othersingleexamples;

public class PointTest {
    public static void main(String[] args) {
        Point3D point = new Point3D(1.23, 4.56, 7.89);
        Point3D pointNew = new Point3D(7.89, 4.56, 1.23);
        Object obj = point;

        System.out.println(point.equals(obj));
        System.out.println(point.equals(pointNew));
        System.out.println(point.hashCode());
    }
}
