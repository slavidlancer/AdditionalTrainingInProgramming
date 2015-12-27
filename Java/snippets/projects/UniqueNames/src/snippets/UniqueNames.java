package snippets;

import java.util.SortedSet;
import java.util.TreeSet;

public class UniqueNames {
    public static void main(String[] args) {
        String[] uniqueList = new String[] {
                "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                "one", "two", "three", "four", "5", "6", "7", "8", "9", "10",
                "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                "one", "two", "three", "four", "5", "6", "7", "8", "9", "10"
        };
        SortedSet<String> uniqueListSet = new TreeSet<String>();

        for (String unique : uniqueList) {
            uniqueListSet.add(unique);
        }

        System.out.println("sorted and unique:");

        for (String unique : uniqueListSet) {
            System.out.println(unique);
        }
    }
}
