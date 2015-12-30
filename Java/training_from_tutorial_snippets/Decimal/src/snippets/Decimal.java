package snippets;

import java.math.BigDecimal;

public class Decimal {
    public static void main(String[] args) {
        double sum = 0.0d;
        BigDecimal bdValue = new BigDecimal("0.1");
        BigDecimal bdSum = new BigDecimal("0.0");

        for (int i = 1; i <= 10; i++) {
            sum += 0.1d;
            bdSum = bdSum.add(bdValue);
        }

        System.out.println("Double sum is: " + sum);
        System.out.println("BigDecimal sum is: " + bdSum);

        System.out.println(Float.floatToIntBits(2.35f));
        System.out.println(Double.doubleToRawLongBits(sum));
    }
}
