package snippets;

import java.util.HashSet;
import java.util.Set;

public class UnionIntersect {
    public static void main(String[] args) {
        Set<String> studentsList = new HashSet<String>();

        studentsList.add("1. first");
        studentsList.add("2. second");
        studentsList.add("3. third");

        Set<String> studentsListOther = new HashSet<String>();

        studentsListOther.add("4. fourth");
        studentsListOther.add("2. second");
        studentsListOther.add("3. third");

        System.out.println("first list: " + studentsList);
        System.out.println("second list: " + studentsListOther);

        System.out.println("both lists: " +
                union(studentsList, studentsListOther));
        System.out.println("one or other list: " +
                intersect(studentsList, studentsListOther));
    }

    public static <E> Set<E> union(Set<E> set1, Set<E> set2) {
        Set<E> union = new HashSet<E>();

        union.addAll(set1);
        union.addAll(set2);

        return union;
    }

    public static <E> Set<E> intersect(Set<E> set1, Set<E> set2) {
        Set<E> intersect = new HashSet<E>();

        intersect.addAll(set1);
        intersect.retainAll(set2);

        return intersect;
    }
}
