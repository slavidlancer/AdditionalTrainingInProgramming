package snippets;

import java.util.TreeSet;

public class TreeSetExample {
    public static void main(String[] args) {
        TreeSet<Integer> treeSetExample = new TreeSet<Integer>();

        treeSetExample.add(5);
        treeSetExample.add(8);
        treeSetExample.add(1);
        treeSetExample.add(6);
        treeSetExample.add(3);
        treeSetExample.remove(6);

        for (int i : treeSetExample) {
            System.out.printf("%d ", i);
        }
    }
}
