package snippets;

public class Inversions {
    static int findInversions(int[] array) {
        int inversions = 0;
        int length = array.length;

        for (int i = 0; i < length; i++) {
            for (int j = i + 1; j < length; j++) {
                if (array[i] > array[j]) {
                    inversions++;
                }
            }
        }

        return inversions;
    }
}
