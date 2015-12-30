package tutorials.datastructures;

import java.util.HashMap;
import java.util.Map;

public class HashMapDemo {
    public static void main(String[] args) {
        Map<String, Double> studentsMarks = new HashMap<String, Double>();
        studentsMarks.put("P", 3.00);
        studentsMarks.put("G", 4.50);
        studentsMarks.put("N", 5.50);
        studentsMarks.put("V", 3.50);
        studentsMarks.put("T", 4.00);
        studentsMarks.put("M", 6.00);

        Double tMark = studentsMarks.get("T");
        System.out.printf("T's mark: %.2f %n", tMark);

        studentsMarks.remove("T");
        System.out.println("T removed.");

        System.out.printf("Is T in the hash table: %b %n",
                studentsMarks.containsKey("T"));

        studentsMarks.put("N", 3.25);
        System.out.println("N's mark changed.");

        System.out.println("Students and marks:");

        for (Map.Entry<String, Double> studentMark : studentsMarks.entrySet()) {
            System.out.printf("%s has %.2f%n", studentMark.getKey(),
                    studentMark.getValue());
        }

        System.out.printf("There are %d students.%n", studentsMarks.size());
        studentsMarks.clear();
        System.out.println("Students hashmap cleared.");
        System.out.printf("Is hash table empty: %b%n", studentsMarks.isEmpty());
    }
}
