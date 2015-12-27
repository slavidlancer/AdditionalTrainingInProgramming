import java.util.ArrayList;
import java.util.Arrays;

public class ArrayConversions {
	public static void main(String[] args) {
		int[] arr = new int[] {1, 2, 3};
		// Convert the array to ArrayList
		ArrayList<Integer> list =
			new ArrayList<Integer>(arr.length);

		for (int i = 0; i < arr.length; i++) {
			list.add(arr[i]);
		}

		// Append new number to the ArrayList
		list.add(4);
		// Convert the ArrayList to array
		Integer[] ints =
			(Integer[]) list.toArray(new Integer[list.size()]);
		// Print the array
		System.out.println(Arrays.toString(ints));
	}
}
