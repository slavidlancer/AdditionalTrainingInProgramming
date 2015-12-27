package snippets;

public class Functions {
    public static void main(String[] args) {
        int[] array = {9, 8, 3, 4, 10, 6, 8, 7, 1, 5};
        int length = array.length;

        System.out.println(length);
        System.out.println(MaxElement.findMaxElement(array));
        System.out.println(Inversions.findInversions(array));
        System.out.println(Sums.sumWith3Loops(length));
        System.out.println(Sums.sumOfMAndN(length, length * 2));
        System.out.println(Sums.sumOfMAndNOther(length, length * 2));
        System.out.println(Factorial.calculate(length));
        System.out.println(Fibonacci.calculate(length));
        System.out.println(Fibonacci.calculateOther(length));
    }
}
