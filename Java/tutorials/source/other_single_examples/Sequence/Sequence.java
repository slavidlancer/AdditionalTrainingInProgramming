public class Sequence {
	// Static field
	private static int currentValue = -1;
	// Intentionally deny instantiation of this class
	private Sequence() {
	}
	// Static method
	public static int nextValue() {
		currentValue++;

		return currentValue;
	}
}

public static void main(String[] args) {
	System.out.printf("Sequence[1..3]: %d, %d, %d%n",
			Sequence.nextValue(), Sequence.nextValue(),
			Sequence.nextValue());
}
