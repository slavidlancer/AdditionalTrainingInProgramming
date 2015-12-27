public final class Integer
		extends Number
		implements Comparable<Integer> {
	// ...
	public static Integer valueOf(String s)
			throws NumberFormatException {
		return new Integer(parseInt(s, 10));
	}
	// ...
}
