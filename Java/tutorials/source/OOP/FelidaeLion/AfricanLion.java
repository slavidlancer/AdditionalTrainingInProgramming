package introjavabook;

public class AfricanLion extends Lion {
	// ...
	public AfricanLion(boolean male, int weight) {
	// If we comment the next line, AfricanLion
	// will not compile. Try it.
		super(male, weight);
	}

	public String toString() {
		return String.format(
			"(AfricanLion, male: %s, weight: %s)",
			this.isMale(), this.getWeight());
	}
	// ...
}
