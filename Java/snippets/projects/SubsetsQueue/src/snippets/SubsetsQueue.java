package snippets;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

public class SubsetsQueue {
    public static void main(String[] args) {
        String[] words = {"one", "two", "three", "four"};
        Queue<Set<String>> subset = new LinkedList<Set<String>>();
        Set<String> emptySet = new HashSet<String>();

        subset.offer(emptySet);

        while (!subset.isEmpty()) {
            Set<String> subsetTemp = subset.poll();

            System.out.println(subsetTemp);

            for (String element : words) {
                if (!subsetTemp.contains(element)) {
                    Set<String> newSubset = new HashSet<String>();

                    newSubset.addAll(subsetTemp);
                    newSubset.add(element);
                    subset.offer(newSubset);
                }
            }
        }
    }
}
