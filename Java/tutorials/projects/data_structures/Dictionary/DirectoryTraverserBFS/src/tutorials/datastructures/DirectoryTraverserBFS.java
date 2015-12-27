package tutorials.datastructures;

import java.io.File;
import java.util.LinkedList;
import java.util.Queue;

/**
 * Sample class, which traverses given directory
 * based on the Breath-First-Search (BFS) algorithm.
 * @author
 */
public class DirectoryTraverserBFS {
    /**
     * Traverses and prints given directory with BFS.
     * @param startDir - the path to the directory which
     *
    should be traversed.
     */
    public static void traverseDir(String startDirectory) {
        Queue<File> visitedDirsQueue = new LinkedList<File>();
        visitedDirsQueue.add(new File(startDirectory));

        while (visitedDirsQueue.size() > 0) {
            File currentDir = visitedDirsQueue.remove();

            System.out.println(currentDir.getAbsolutePath());

            File[] children = currentDir.listFiles();

            if (children != null) {
                for (File child : children) {
                    if (child.isDirectory()) {
                        visitedDirsQueue.add(child);
                    }
                }
            }
        }
    }

    public static void main(String[] args) {
        traverseDir(
                "/home/computer/app/apache-tomcat-8.0.27/webapps/examples/" +
                        "WEB-INF/");
    }
}
