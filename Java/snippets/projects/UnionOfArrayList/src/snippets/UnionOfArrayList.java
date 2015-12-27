package snippets;

import java.util.ArrayList;

public class UnionOfArrayList {
    public static void main(String[] args) {
        ArrayList<Integer> firstList = new ArrayList<Integer> ();

        firstList.add(1);
        firstList.add(2);
        firstList.add(3);
        firstList.add(4);
        firstList.add(5);

        System.out.print("firstList = ");
        
        printList(firstList);

        ArrayList<Integer> secondList = new ArrayList<Integer>();

        secondList.add(2);
        secondList.add(4);
        secondList.add(6);

        System.out.print("secondList = ");

        printList(secondList);

        ArrayList<Integer> unionList = new ArrayList<Integer>();

        unionList.addAll(firstList);
        unionList.removeAll(secondList);
        unionList.addAll(secondList);

        System.out.print("union = ");

        printList(unionList);
    }

    private static void printList(ArrayList<Integer> list) {
        System.out.print("{ ");

        for (Integer item : list) {
            System.out.print(item);
            System.out.print(" ");
        }

        System.out.println("}");
    }
}
