package snippets;

public class Utils {
    static int findMax(int[] array, int i) {
        if (array[i] < array[i + 1]) {
            int maxElement = max(array[i + 1], array[i + 2], array[i + 3]);

            return maxElement;
        } else {
            int maxElement = max(array[i], array[i + 2], array[i + 3]);

            return maxElement;
        }
    }
    
    static int max(int i, int j, int k) {
        if (i < j) {
            int maxElement = max(j, k);

            return maxElement;
        } else {
            int maxElement = max(i, k);

            return maxElement;
        }
    }
    
    static int max(int i, int j) {
        if (i < j) {
            return j;
        } else {
            return i;
        }
    }
}
