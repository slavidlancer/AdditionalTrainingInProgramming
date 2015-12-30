package tutorials.datastructures;

import java.util.ArrayList;

public class UnionIntersect {
    public static ArrayList<Integer> union(ArrayList<Integer> firstList,
                                           ArrayList<Integer> secondList) {
        ArrayList<Integer> union = new ArrayList<Integer>();
        union.addAll(firstList);

        for (Integer item : secondList) {
            if (!union.contains(item)) {
                union.add(item);
            }
        }

        return union;
    }

    public static ArrayList<Integer> intersect(ArrayList<Integer> firstList,
                                               ArrayList<Integer> secondList) {
        ArrayList<Integer> intersect = new ArrayList<Integer>();

        for (Integer item : firstList) {
            if (!secondList.contains(item)) {
                intersect.add(item);
            }
        }

        return intersect;
    }

    public static void printList(ArrayList<Integer> list) {
        System.out.print("{ ");

        for (Integer item : list) {
            System.out.print(item);
            System.out.print(" ");
        }

        System.out.println("}");
    }

    public static void main(String[] args) {
        ArrayList<Integer> firstList = new ArrayList<Integer>();
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

        ArrayList<Integer> unionList = union(firstList, secondList);

        System.out.print("union = ");
        printList(unionList);

        ArrayList<Integer> intersectList = intersect(firstList, secondList);

        System.out.print("intersect = ");
        printList(intersectList);
    }
}
