package training;

import java.util.Arrays;

public class ReverseArray {
    public static void main(String[] args) {
        int[] array = new int[] {1, 2, 3, 4, 5};
        int length = array.length;
        int[] reversed = new int[length];

        System.out.println(Arrays.toString(array));

        for (int i = 0; i < length; i++) {
            reversed[length - 1 - i] = array[i];
        }

        System.out.println(Arrays.toString(reversed));
    }
}
