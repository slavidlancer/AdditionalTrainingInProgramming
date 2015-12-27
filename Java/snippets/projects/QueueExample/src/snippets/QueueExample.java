package snippets;

import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {
    public static void main(String[] args) {
        Queue<String> queueExample = new LinkedList<String>();

        queueExample.offer("one");
        queueExample.offer("two");
        queueExample.offer("three");
        queueExample.offer("four");

        String peek = queueExample.peek();

        System.out.println(peek + "\n");

        while (queueExample.size() > 0) {
            String name = queueExample.poll();

            System.out.println(name);
        }
    }
}
