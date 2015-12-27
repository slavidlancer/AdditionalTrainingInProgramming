package snippets;

public class SystemTest {
    public static void main(String[] args) {
        int sum = 0;
        long startTime = System.currentTimeMillis();

        for (int i = 0; i < 1000000; i++) {
            sum++;
        }

        long endTime = System.currentTimeMillis();
        double elapsedTime = (endTime - startTime)/1000.0;

        System.out.printf("the elapsed time is %f s", elapsedTime);
    }
}
