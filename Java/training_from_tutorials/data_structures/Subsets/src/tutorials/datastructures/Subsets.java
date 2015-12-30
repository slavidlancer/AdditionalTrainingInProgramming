package tutorials.datastructures;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

public class Subsets {
    private static String[] words = {"more", "beer", "I", "this"};

    public static void main(String[] args) {
        Queue<ArrayList<Integer>> subsetsQueue =
                new LinkedList<ArrayList<Integer>>();
        ArrayList<Integer> emptySet = new ArrayList<Integer>();

        subsetsQueue.offer(emptySet);

        while (!subsetsQueue.isEmpty()) {
            ArrayList<Integer> subset = subsetsQueue.poll();

            print(subset);

            int start = -1;

            if (subset.size() > 0) {
                start = subset.get(subset.size() - 1);
            }

            for (int index = start + 1; index < words.length; index++){
                ArrayList<Integer> newSubset = new ArrayList<Integer>();
                newSubset.addAll(subset);
                newSubset.add(index);
                subsetsQueue.offer(newSubset);
            }
        }
    }

    private static void print(ArrayList<Integer> subset) {
        System.out.print("[ ");

        for (int i = 0; i < subset.size(); i++) {
            int index = subset.get(i);

            System.out.print(words[index] + " ");
        }

        System.out.println("]");
    }
}
