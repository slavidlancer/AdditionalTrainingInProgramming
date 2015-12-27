package snippets;

import java.util.Stack;

public class StackExample {
    public static void main(String[] args) {
        Stack<String> stackList = new Stack<String>();

        stackList.push("1. first");
        stackList.push("2. second");
        stackList.push("3. third");
        stackList.push("4. fourth");

        System.out.println("top: " + stackList.peek());

        while (stackList.size() > 0) {
            String name = stackList.pop();

            System.out.println(name);
        }
    }
}
