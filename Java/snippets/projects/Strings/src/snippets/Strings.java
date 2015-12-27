package snippets;

public class Strings {
    public static void main(String[] args) {
        String msg = "awpaoreijfaod.lan olajdsa";
        int msgLength = msg.length();
        String quote = "book title intro \"Java\"";
        String firstWord = "Java";
        String secondWord = "JAVA";
        String score = "sCore";
        String scary = "scary";
        String firstString = "Hello";
        String secondString = firstString;
        String hel = "Hel";
        String copy = hel + "lo";
        String same = "Hello";
        String string01 = new String("Hello");
        String string02 = new String("Hello");
        String name = " reader";
        String greet = firstString.concat(name);
        String result = firstString + name;
        int index = quote.indexOf("Java");
        String course = "Java programming course";
        int stringIndex = course.indexOf("Java");

        System.out.printf("msg = \"%s\"%n ", msg);
        System.out.printf("msg.length() = %d%n ", msgLength);

        for (int i = 0; i < msgLength; i++) {
            System.out.printf("msg[%d] = \'%c\'%n", i, msg.charAt(i));
        }

        System.out.printf("%s%n", quote);

        System.out.println(firstWord.equals(secondWord));
        System.out.println(firstWord.equalsIgnoreCase(secondWord));

        System.out.println(score.compareToIgnoreCase(scary));
        System.out.println(scary.compareToIgnoreCase(score));
        System.out.println(scary.compareTo(score));

        System.out.println((firstString == secondString));
        System.out.println((firstString == copy));
        System.out.println((firstString == same));
        System.out.println((string01 == string02));

        System.out.println(result);
        result += "!";
        System.out.println(greet + "\n" + result);

        System.out.println(index);
        quote += " Java programming language JaVa";

        index = quote.indexOf("Java");

        while (index != -1) {
            System.out.println("Java found on: " + index);

            index = quote.indexOf("Java", index + 1);
        }

        System.out.println(stringIndex);
        stringIndex = course.indexOf("course");
        System.out.println(stringIndex);
        stringIndex = course.indexOf("COURSE");
        System.out.println(stringIndex);
        stringIndex = course.indexOf("ram");
        System.out.println(stringIndex);
        stringIndex = course.indexOf("r");
        System.out.println(stringIndex);
        stringIndex = course.indexOf("r", 7);
        System.out.println(stringIndex);
        stringIndex = course.indexOf("r", 10);
        System.out.println(stringIndex);
    }
}
