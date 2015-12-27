package tutorials.othersingleexamples;

import java.util.ArrayList;
import java.util.Arrays;

public class ArrayConversions {
    public static void main(String[] args) {
        int[] arr = new int[] {1, 2, 3};
        int size = arr.length;
        ArrayList<Integer> list = new ArrayList<Integer>(size);

        for (int i = 0; i < size; i++) {
            list.add(arr[i]);
        }

        list.add(4);

        Integer[] ints = (Integer[]) list.toArray(new Integer[list.size()]);

        System.out.println(Arrays.toString(ints));
    }
}
