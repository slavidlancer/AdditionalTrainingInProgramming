import java.io.*;
import java.util.*;

public class Maze {
	private static final String INPUT_FILE_NAME = "Problem2.in";
	private static final String OUTPUT_FILE_NAME = "Problem2.out";

	private class Cell {
		int row;
		int col;
		int distance;

		public Cell(int row, int col, int distance) {
			this.row = row;
			this.col = col;
			this.distance = distance;
		}
	}

	private char[][] maze;
	private int size;
	private Cell startCell = null;

	public void readFromFile(String fileName)
			throws FileNotFoundException {
		Scanner scanner = new Scanner(new File(fileName));

		try {
			// Read maze size
			this.size = scanner.nextInt();
			scanner.nextLine();
			// Create the maze
			this.maze = new char[this.size][this.size];

			// Read the maze cells from the file
			for (int row = 0; row < this.size; row++) {
				String line = scanner.nextLine();

				for (int col = 0; col < line.length(); col++) {
					char ch = line.charAt(col);
					maze[row][col] = ch;

					if (ch == '*') {
						this.startCell = new Cell(row, col, 0);
					}
				}
			}
		} finally {
			scanner.close();
		}
	}

	public int findShortestPath(Cell startCell) {
		if (startCell == null) {
		// Start cell is missing -> no path
			return -1;
		}

		// Queue for traversing the cells in the maze
		Queue<Cell> visitedCells = new LinkedList<Cell>();
		visitCell(visitedCells, startCell.row, startCell.col, 0);

		// Perform Breath-First-Search (BFS)
		while (!visitedCells.isEmpty()) {
			Cell currentCell = visitedCells.remove();
			int row = currentCell.row;
			int col = currentCell.col;
			int distance = currentCell.distance;

			if ((row == 0) || (row == size - 1)
					|| (col == 0) || (col == size - 1)) {
				// We are at the maze border
				return distance + 1;
			}

			visitCell(visitedCells, row, col + 1, distance + 1);
			visitCell(visitedCells, row, col - 1, distance + 1);
			visitCell(visitedCells, row + 1, col, distance + 1);
			visitCell(visitedCells, row - 1, col, distance + 1);
		}

		// We didn't reach any cell at the maze border -> no path
		return -1;
	}

	private void visitCell(Queue<Cell> visitedCells,
			int row, int col, int distance) {
		if (maze[row][col] != 'x') {
			// Cell is free. Visit it
			maze[row][col] = 'x';
			Cell cell = new Cell(row, col, distance);
			visitedCells.add(cell);
		}
	}

	public void saveResult(String fileName, int result)
			throws IOException {
		FileWriter writer = new FileWriter(fileName);

		try {
			writer.write("" + result);
		} finally {
			writer.close();
		}
	}

	public static void main(String[] args) throws IOException {
		Maze maze = new Maze();
		maze.readFromFile(INPUT_FILE_NAME);
		int pathLength = maze.findShortestPath(maze.startCell);
		maze.saveResult(OUTPUT_FILE_NAME, pathLength);
	}
}
