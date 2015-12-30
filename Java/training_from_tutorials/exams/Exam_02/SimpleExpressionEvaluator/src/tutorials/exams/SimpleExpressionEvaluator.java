package tutorials.exams;

import java.util.Arrays;
import java.util.Scanner;

public class SimpleExpressionEvaluator {
    private static int[] extractNumbers(String expression) {
        String[] splitResult = expression.split("[+-]");
        int numbersCount = splitResult.length;
        int[] numbers = new int[numbersCount];
        int currentNumber = 0;

        for (int index = 0; index < numbersCount; index++) {
            currentNumber = Integer.parseInt(splitResult[index]);
            numbers[index] = currentNumber;
        }

        return numbers;
    }

    private static String[] extractOperators(String expression) {
        String[] operators = expression.split("[0123456789]+");
        int operatorsCount = operators.length;

        if (operatorsCount > 0) {
            operators = Arrays.copyOfRange(operators, 1, operatorsCount);
        }

        return operators;
    }

    private static int calculateExpression(int[] numbers, String[] operators) {
        int result = numbers[0];

        for (int i = 1; i < numbers.length; i++) {
            String nextOperator = operators[i - 1];
            int nextNumber = numbers[i];

            if (nextOperator.equals("+")) {
                result += nextNumber;
            } else if (nextOperator.equals("-")) {
                result -= nextNumber;
            }
        }

        return result;
    }

    private static String readExpression() {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter expression: ");
        String expression = input.nextLine();

        return expression;
    }

    public static void main(String[] args) {
        String expression = readExpression();

        try {
            int[] numbers = extractNumbers(expression);
            String[] operators = extractOperators(expression);
            int result = calculateExpression(numbers, operators);

            System.out.printf("%s = %d \n", expression, result);
        } catch (Exception ex) {
            System.out.println("Invalid expression!");
        }
    }
}
