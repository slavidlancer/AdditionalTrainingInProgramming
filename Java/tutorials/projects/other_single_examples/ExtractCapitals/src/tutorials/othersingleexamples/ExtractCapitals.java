package tutorials.othersingleexamples;

public class ExtractCapitals {
    public static String extractCapitals(String str) {
        StringBuilder result = new StringBuilder();

        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);

            if (Character.isUpperCase(ch)) {
                result.append(ch);
            }
        }

        return result.toString();
    }

    public static void main(String[] args) {
        String sample = "daWdererghyjUFDS";

        System.out.println(extractCapitals(sample));
    }
}
