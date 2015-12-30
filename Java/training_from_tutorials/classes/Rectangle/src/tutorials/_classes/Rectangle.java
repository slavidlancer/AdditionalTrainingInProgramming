package tutorials._classes;

public class Rectangle {
    private float width;
    private float height;

    public Rectangle(float width, float height) {
        this.width = width;
        this.height = height;
    }

    public float getArea() {
        float result = this.width * this.height;

        return result;
    }

    public static void main(String[] args) {
        Rectangle rectangle = new Rectangle(2.0f, 3.0f);

        System.out.println(rectangle.getArea());
    }
}
