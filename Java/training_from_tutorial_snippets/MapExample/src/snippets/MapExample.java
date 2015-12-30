package snippets;

import java.util.HashMap;
import java.util.Map;

public class MapExample {
    public static void main(String[] args) {
        Map<String, Double> studentsMarks = new HashMap<String, Double>();

        studentsMarks.put("first", 6.00);
        studentsMarks.put("second", 5.45);
        studentsMarks.put("third", 4.70);
        studentsMarks.put("fourth", 3.20);
        studentsMarks.put("random", 2.50);
        studentsMarks.put("last", 5.50);

        Double randomMark = studentsMarks.get("random");
        System.out.printf("random: %.2f%n", randomMark);

        studentsMarks.remove("random");

        System.out.println("random is removed");

        System.out.printf("random in the hash table: %b%n",
                studentsMarks.containsKey("random"));

        studentsMarks.put("last", 1.23);

        System.out.println("last is changed");
        System.out.println("\nall students and marks");

        for (Map.Entry<String, Double> studentMark : studentsMarks.entrySet()) {
            System.out.printf("%s: %.2f%n", studentMark.getKey(),
                    studentMark.getValue());
        }

        int size = studentsMarks.size();

        System.out.println("number of students: " + size);

        studentsMarks.clear();

        System.out.println("cleared hash map, is empty: " +
                studentsMarks.isEmpty());
    }

    /*
    @Override
    public int hashCode() {
        return 53;
    }
     */
}
