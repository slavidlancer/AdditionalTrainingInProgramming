public class FindPathInLabyrinth {
	private static char[][] lab = {
		{' ', ' ', ' ', '*', ' ', ' ', ' '},
		{'*', '*', ' ', '*', ' ', '*', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', '*', '*', '*', '*', '*', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', 'е'},
	};

	private static void findPath(int row, int col) {
		if ((col<0) || (row<0) ||
				(col>=lab[0].length) || (row >= lab.length)) {
		// We are out of the labyrinth
			return;
		}

		// Check if we have found the exit
		if (lab[row][col] == 'е') {
			System.out.println("Found the exit!");
		}

		if (lab[row][col] != ' ') {
			// The current cell is not free
			return;
		}

		// Mark the current cell as visited
		lab[row][col] = 's';

		// Invoke recursion the explore all possible directions
		findPath(row, col-1); // left
		findPath(row-1, col); // up
		findPath(row, col+1); // right
		findPath(row+1, col); // down
		// Mark back the current cell as free
		lab[row][col] = ' ';
	}

	public static void main(String[] args) {
		findPath(0, 0);
	}
}
