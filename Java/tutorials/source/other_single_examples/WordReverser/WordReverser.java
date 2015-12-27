public class WordReverser {
	public static void main(String[] args) {
		String text = "EM edit";
		String reversed = reverseText(text);
		System.out.println(reversed); // tide ME
	}

	public static String reverseText(String text) {
		StringBuilder sb = new StringBuilder();

		for (int i = text.length() - 1; i >= 0; i--) {
			sb.append(text.charAt(i));
		}

		return sb.toString();
	}
}
