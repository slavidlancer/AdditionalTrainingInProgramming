package snippets;

import java.util.Calendar;
import java.util.Locale;

public class Format {
    public static void main(String[] args) {
        long number = 120582;
        double pi = Math.PI;
        Calendar calendarVariable = Calendar.getInstance();

        System.out.format("%d%n", number);
        System.out.format("%08d%n", number);
        System.out.format("%+8d%n", number);
        System.out.format("%,8d%n", number);
        System.out.format("%+,8d%n%n", number);

        System.out.format("%f%n", pi);
        System.out.format("%.3f%n", pi);
        System.out.format("%10.3f%n", pi);
        System.out.format("%-10.3f%n", pi);
        System.out.format(Locale.CHINA, "%-10.4f%n%n", pi);

        System.out.format("%tB %te, %tY%n", calendarVariable, calendarVariable,
                calendarVariable);
        System.out.format("%tl:%tM %tp%n", calendarVariable, calendarVariable,
                calendarVariable);
    }
}
