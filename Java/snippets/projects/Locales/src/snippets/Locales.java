package snippets;

import java.util.Date;
import java.util.Locale;

public class Locales {
    public static void main(String[] args) {
        Locale.setDefault(Locale.US);

        System.out.println("Locale: " + Locale.getDefault().toString());
        System.out.printf("%.2f\n", 1234.56);
        System.out.printf("%1$tA %1$tI:%1$tM %1$tp  %1$tB-%1$tY\n", new Date());

        Locale.setDefault(new Locale("bg", "BG"));

        System.out.println("Locale: " + Locale.getDefault().toString());
        System.out.printf("%.2f\n", 1234.56);
        System.out.printf("%1$tA %1$tI:%1$tM %1$tp  %1$tB-%1$tY\n", new Date());
    }
}
