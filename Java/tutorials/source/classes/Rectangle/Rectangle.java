public class Rectangle {
	private float width;
	private float height;

	public Rectangle(float width, float height) {
		this.width = width;
		this.height = height;
	}
	// Obtaining the value of the property area
	public float getArea() {
		return this.width * this.height;
	}
}
