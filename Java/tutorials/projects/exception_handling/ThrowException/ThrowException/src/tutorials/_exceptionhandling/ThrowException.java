package tutorials._exceptionhandling;

public class ThrowException {
    public static void main(String[] args) {
        RuntimeException exception = new RuntimeException("Problem");

        throw exception;

        /*throw new ExpressionParseException(
                String.format("Invalid character at position %d." +
                        "Number expected but found character '%s'.", 1, 'a'));*/
    }
}
