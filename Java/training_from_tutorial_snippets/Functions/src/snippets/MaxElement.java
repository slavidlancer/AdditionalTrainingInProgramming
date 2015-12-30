package snippets;

public class MaxElement {
    static int findMaxElement(int[] array) {
        int max = array[0];
        int length = array.length;

        for (int i = 1; i < length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
        }

        return max;
    }
}
