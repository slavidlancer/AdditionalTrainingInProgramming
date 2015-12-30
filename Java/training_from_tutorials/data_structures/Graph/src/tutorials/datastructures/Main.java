package tutorials.datastructures;

public class Main {
    public static void main(String[] args) {
        int[][] vertices = new int[][] { {1, 2}, {3, 4}, {5, 6} };
        Graph graph = new Graph(vertices);

        graph.addEdge(0, 0);
        System.out.println(graph.getSuccessors(2));
        System.out.println(graph.hasEdge(2, 1));
        graph.removeEdge(1, 2);
    }
}
