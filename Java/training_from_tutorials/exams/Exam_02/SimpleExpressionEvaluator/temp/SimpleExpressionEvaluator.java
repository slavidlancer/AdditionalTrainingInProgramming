public static void main(String[] args) {
        String expression = "1+2-7+2-1+28";
        int[] numbers = extractNumbers(expression);

        for (int number : numbers) {
            System.out.printf("%s ", number);
        }
}

public static void main(String[] args) {
        String expression = "1+2-7+2-1+28";
        String[] operators = extractOperators(expression);

        for (String operator : operators) {
            System.out.printf("'%s' ", operator);
        }
}

public static void main(String[] args) {
        // Expression: 1 + 2 - 3 + 4
        int[] numbers = { 1, 2, 3, 4 };
        String[] operators = { "+", "-", "+" };
        // Expected result: 4
        int result = calculateExpression(numbers, operators);

        System.out.printf("Result is: %s", result);
}