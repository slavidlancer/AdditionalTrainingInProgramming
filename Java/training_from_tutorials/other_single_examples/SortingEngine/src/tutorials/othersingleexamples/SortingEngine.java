package tutorials.othersingleexamples;

public class SortingEngine {
    public static int[] sort(int ... numbers) {
        for (int i = 0; i < numbers.length - 1; i++) {
            for (int j = i + 1; j < numbers.length; j++) {
                if (numbers[i] > numbers[j]) {
                    int temp = numbers[i];
                    numbers[i] = numbers[j];
                    numbers[j] = temp;
                }
            }
        }

        return numbers;
    }

    public static void printNumbers(int ... numbers) {
        for (int i = 0; i < numbers.length; i++) {
            System.out.printf("%d", numbers[i]);

            if (i < (numbers.length - 1)) {
                System.out.print(", ");
            }
        }
    }

    public static void main(String[] args) {
        int[] numbers = sort(10, 3, 5, -1, 0, 12, 8);
        printNumbers(numbers);
    }
}
