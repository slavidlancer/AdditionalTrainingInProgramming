package tutorials.datastructures;

import java.util.LinkedList;
import java.util.Queue;

public class QueueSum {
    public static void main(String[] args) {
        int n = 3;
        int p = 16;
        Queue<Integer> queue = new LinkedList<Integer>();
        queue.offer(n);
        int index = 0;

        System.out.print("S =");

        while (queue.size() > 0) {
            index++;
            int current = queue.poll();

            System.out.print(" " + current);

            if (current == p) {
                System.out.println();
                System.out.println("Index = " + index);

                return;
            }

            queue.offer(current + 1);
            queue.offer(2 * current);
        }
    }
}
