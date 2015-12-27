package introjavabook;

public class Lion extends Felidae {
	private int weight;

	public Lion(boolean male, int weight) {
		super(male); // Shall be explained in the next paragraph
		this.weight = weight;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}
}
