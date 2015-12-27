package tutorials.exams;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Maze {
    private static final String INPUT_FILE_NAME =  "out/production/" +
            "Labyrinth/tutorials/exams/Problem2.in";
    private static final String OUTPUT_FILE_NAME =  "out/production/" +
            "Labyrinth/tutorials/exams/Problem2.out";

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

    public void readFromFile(String fileName) throws FileNotFoundException {
        Scanner scanner = new Scanner(new File(fileName));

        try {
            this.size = scanner.nextInt();
            scanner.nextLine();
            this.maze = new char[this.size][this.size];

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
            return -1;
        }

        Queue<Cell> visitedCells = new LinkedList<Cell>();
        visitCell(visitedCells, startCell.row, startCell.col, 0);

        //Breath-First-Search (BFS)
        while (!visitedCells.isEmpty()) {
            Cell currentCell = visitedCells.remove();
            int row = currentCell.row;
            int col = currentCell.col;
            int distance = currentCell.distance;

            if ((row == 0) || (row == size - 1) || (col == 0) ||
                    (col == size - 1)) {
                return distance + 1;
            }

            visitCell(visitedCells, row, col + 1, distance + 1);
            visitCell(visitedCells, row, col - 1, distance + 1);
            visitCell(visitedCells, row + 1, col, distance + 1);
            visitCell(visitedCells, row - 1, col, distance + 1);
        }

        return -1;
    }

    private void visitCell(Queue<Cell> visitedCells, int row, int col,
                           int distance) {
        if (maze[row][col] != 'x') {
            maze[row][col] = 'x';
            Cell cell = new Cell(row, col, distance);
            visitedCells.add(cell);
        }
    }

    public void saveResult(String fileName, int result) throws IOException {
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
