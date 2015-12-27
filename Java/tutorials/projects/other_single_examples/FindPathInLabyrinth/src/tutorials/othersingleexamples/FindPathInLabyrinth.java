package tutorials.othersingleexamples;

public class FindPathInLabyrinth {
    private static char[][] lab = {
            {' ', ' ', ' ', '*', ' ', ' ', ' '},
            {'*', '*', ' ', '*', ' ', '*', ' '},
            {' ', ' ', ' ', ' ', ' ', ' ', ' '},
            {' ', '*', '*', '*', '*', '*', ' '},
            {' ', ' ', ' ', ' ', ' ', ' ', 'е'},
    };

    private static void findPath(int row, int col) {
        if ((col < 0) || (row < 0) || (col >= lab[0].length) ||
                (row >= lab.length)) {
            return;
        }

        if (lab[row][col] == 'е') {
            System.out.println("Found the exit!");
        }

        if (lab[row][col] != ' ') {
            return;
        }

        lab[row][col] = 's';

        findPath(row, col - 1); // left
        findPath(row - 1, col); // up
        findPath(row, col + 1); // right
        findPath(row + 1, col); // down

        lab[row][col] = ' ';
    }

    public static void main(String[] args) {
        findPath(0, 0);
    }
}
