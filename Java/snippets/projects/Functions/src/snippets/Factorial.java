package snippets;

public class Factorial {
    static long calculate(int n) {
        if (n == 0) {
            return 1;
        } else {
            return n * calculate(n - 1);
        }
    }
}
