package snippets;

public class Fibonacci {
    static long calculate(int n) {
        if (n == 0) {
            return 1;
        } else if (n == 1) {
            return 1;
        } else {
            return calculate(n - 1) + calculate(n - 2);
        }
    }

    static long calculateOther(int n) {
        long fn = 1;
        long fn_1 = 1;
        long fn_2 = 1;

        for (int i = 2; i <= n; i++) {
            fn = fn_1 + fn_2;
            fn_2 = fn_1;
            fn_1 = fn;
        }

        return fn;
    }
}
