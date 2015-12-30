package snippets;

import java.util.Arrays;

public class ModifyArray {
    public static void modifyTheArray(int[] arrayParameter) {
        arrayParameter[0] = 5;

        System.out.print("in the function the parameter is: ");
        System.out.println(Arrays.toString(arrayParameter));
    }

    public static void main(String[] args) {
        int[] arrayArgument = new int[] { 1, 2, 3 };

        System.out.print("before the function the argument is: ");
        System.out.println(Arrays.toString(arrayArgument));

        modifyTheArray(arrayArgument);

        System.out.print("after the function the argument is: ");
        System.out.println(Arrays.toString(arrayArgument));
    }
}
