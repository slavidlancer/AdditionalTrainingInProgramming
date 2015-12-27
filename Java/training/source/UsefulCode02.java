import java.util.*;

public class UsefullCode02 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		ArrayList<Integer> ints = new ArrayList<Integer>();
		ArrayList<Double> doubles = new ArrayList<Double>();

		while (true) {
			System.out.println("Enter an int or a double:");

			if (input.hasNextInt()) {
				ints.add(input.nextInt());
			} else if (input.hasNextDouble()) {
				doubles.add(input.nextDouble());
			} else {
				break;
			}
		}

		System.out.printf("You entered these ints: %s%n",
			ints.toString());

		System.out.printf("You entered these doubles: %s%n",
			doubles.toString());

		String str = new Scanner(System.in).nextLine();
		try {
		        int i = Integer.parseInt(str);

		        System.out.printf(
				"You entered a valid integer number %d.\n",
				i);
		}
		catch (NumberFormatException nfex) {
		        System.err.println("Invalid integer number: " + nfex);
		}
	}
}
