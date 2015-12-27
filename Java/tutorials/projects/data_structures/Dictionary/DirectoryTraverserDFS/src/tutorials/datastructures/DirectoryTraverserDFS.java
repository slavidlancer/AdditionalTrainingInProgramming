package tutorials.datastructures;

import java.io.File;

/**
 * Sample class, which traverses recursively given directory
 * based on the Depth-First-Search (DFS) algorithm.
 *
 * @author
 */
public class DirectoryTraverserDFS {
    /**
     * Traverses and prints given directory recursively.
     * @param dir - the directory to be traversed.
     * @param spaces - the spaces used for representation
     * of the parent-child relation.
     */
    private static void traverseDir(File dir, String spaces) {
        if (dir.isDirectory()) {
            System.out.println(spaces + dir.getAbsolutePath());

            String[] children = dir.list();

            for (String child : children) {
                traverseDir(new File(dir, child), spaces + " ");
            }
        }
    }

    /**
     * Traverses and prints given directory recursively.
     * @param directoryPath - the path to the directory which
     * should be traversed.
     */
    public static void traverseDir(String directoryPath) {
        traverseDir(new File(directoryPath), new String());
    }

    public static void main(String[] args) {
        traverseDir("/home/computer/app/apache-tomcat-8.0.27/");
    }
}
