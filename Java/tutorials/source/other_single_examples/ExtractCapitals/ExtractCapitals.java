public class ExtractCapitals {
	public static String extractCapitals(String s) {
		StringBuilder result = new StringBuilder();

		for (int i = 0; i < s.length(); i++) {
			char ch = s.charAt(i);

			if (Character.isUpperCase(ch)) {
				result.append(ch);
			}
		}

		return result.toString();
	}
}
