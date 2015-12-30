package snippets;

import java.util.Arrays;

public class ArraysCheck {
    public static void main(String[] args) {
        int[][] intMatrix = new int[3][4];
        float[][] floatMatrix = new float[8][2];
        String[][][] stringCube = new String[5][5][5];
        int[][] matrix = {
                {1, 2, 3, 4}, //row 0
                {5, 6, 7, 8} //row 1
        };
        int[] newArray = {1, 2, 3, 4, 5, 6};
        int[][] newInts = { {1, 2, 3}, {91, 92, 93, 94}, {2001, 2002}};

        System.out.println(Arrays.deepToString(floatMatrix));
        System.out.println(Arrays.deepToString(stringCube));
        System.out.println(Arrays.deepToString(matrix));
        System.out.println(Arrays.toString(newArray));
        System.out.println(Arrays.deepToString(intMatrix));
        System.out.println(Arrays.deepToString(newInts));
    }
}
