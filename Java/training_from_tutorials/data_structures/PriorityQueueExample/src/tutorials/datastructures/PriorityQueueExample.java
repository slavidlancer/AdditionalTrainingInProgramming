package tutorials.datastructures;

import java.util.PriorityQueue;

public class PriorityQueueExample {
    static class Person implements Comparable<Person> {
        String name;
        int priority;

        public Person(String name, int priority) {
            this.name = name;
            this.priority = priority;
        }

        @Override
        public int compareTo(Person p) {
            if (this.priority > p.priority) {
                return 1;
            } else if (this.priority < p.priority) {
                return -1;
            } else {
                return 0;
            }
        }

        @Override
        public String toString() {
            return "[" + name + " : " + priority + "]";
        }
    }

    public static void main(String[] args) {
        PriorityQueue<Person> queue = new PriorityQueue<Person>();
        queue.add(new Person("M", 8));
        queue.add(new Person("P", 5));
        queue.add(new Person("G", 3));

        while (!queue.isEmpty()) {
            System.out.println(queue.poll());
        }
    }
}
