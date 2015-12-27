import java.util.LinkedList;
import java.util.List;

/**
* Represents a directed unweighted graph structure.
* @author
*/
public class Graph {
	// Contains the vertices of the graph
	private int vertices[][];
	/**
	* Constructs the graph.
	* @param vertices - the vertices of the graph.
	*/
	public Graph(int[][] vertices) {
		this.vertices = vertices;
	}
	/**
	* Adds new edge from i to j.
	* @param i - the starting vertex.
	* @param j - the ending vertex.
	*/
	public void addEdge(int i, int j) {
		vertices[i][j] = 1;
	}
	/**
	* Removes the edge from i to j if such exists.
	* @param i - the starting vertex.
	* @param j - the ending vertex.
	*/
	public void removeEdge(int i, int j) {
		vertices[i][j] = 0;
	}
	/**
	* Checks whether there is an edge between vertex i and j.
	* @param i - the starting vertex.
	* @param j - the ending vertex.
	* @return true if there is an edge between
	* vertex i and vertex j.
	*/
	public boolean hasEdge(int i, int j) {
		return vertices[i][j] == 1;
	}
	/**
	* Returns the successors of a given vertex.
	* @param i - the vertex.
	* @return list with all successors of the given vertex.
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
