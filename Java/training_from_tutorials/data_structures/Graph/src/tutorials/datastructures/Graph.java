package tutorials.datastructures;

import java.util.LinkedList;
import java.util.List;

public class Graph {
    private int vertices[][];

    /**
     * @param vertices
     */
    public Graph(int[][] vertices) {
        this.vertices = vertices;
    }

    /**
     * @param i - start
     * @param j - end
     */
    public void addEdge(int i, int j) {
        vertices[i][j] = 1;
    }

    /**
     * @param i - start
     * @param j - end
     */
    public void removeEdge(int i, int j) {
        vertices[i][j] = 0;
    }

    /**
     * @param i - start
     * @param j - end
     * @return true/false
     */
    public boolean hasEdge(int i, int j) {
        return vertices[i][j] == 1;
    }

    /**
     * @param i - vertex.
     * @return list
     */
    public List<Integer> getSuccessors(int i) {
        List<Integer> successors = new LinkedList<Integer>();

        for (int j = 0; j < vertices[i].length; i++) {
            if (vertices[i][j] == 1) {
                successors.add(j);
            }
        }

        return successors;
    }
}
