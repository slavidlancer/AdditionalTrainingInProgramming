package tutorials._exceptionhandling;

public class ExceptionProgram {
    public static void main(String[] args) {
        try {
            throw new NullPointerException("Problem");
        } catch (NullPointerException npe) {
            throw new RuntimeException(npe);
        }
    }
}
