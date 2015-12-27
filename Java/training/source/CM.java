import java.util.Arrays;

public class CM
{
	public static void main (String[] args)
	{
		int i;
		int[] array = new int[] {1, 2, 3, 4, 5};
		int length = array.length;
		int[] reversed = new int[length];

		System.out.println (Arrays.toString (array));

		for (i = 0; i < length; i++)
		{
			reversed[length - i - 1] = array[i];
		}

		System.out.println (Arrays.toString (reversed));
	}
}
