package training.pack;

public abstract class Template implements Calculatable {
    protected String firstName;
    protected static final int NUMBER = 0x2000;

    @Override
    public abstract long calculateProduct(int firstValue, int secondValue);
}
