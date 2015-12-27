package snippets;

public class Sums {
    static long sumWith3Loops(int n) {
        long sum = 0;

        for (int a = 0; a < n; a++) {
            for (int b = 0; b < n; b++) {
                for (int c = 0; c < n; c++) {
                    sum += a * b * c;
                }
            }
        }

        return sum;
    }

    static long sumOfMAndN(int m, int n) {
        long sum = 0;

        for (int x = 0; x < n; x++) {
            for (int y = 0; y < m; y++) {
                sum += x * y;
            }
        }

        return sum;
    }

    static long sumOfMAndNOther(int m, int n) {
        long sum = 0;

        for (int x = 0; x < n; x++) {
            for (int y = 0; y < m; y++) {
                if (x == y) {
                    for (int i = 0; i < n; i++) {
                        sum += i * x * y;
                    }
                }
            }
        }

        return sum;
    }
}
