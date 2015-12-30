package tutorials.othersingleexamples;

import java.util.Date;

public class NumbersConcatenatorEllegant {
    public static void main(String[] args) {
        System.out.println(new Date());
        StringBuilder sb = new StringBuilder();
        sb.append("Numbers: ");

        for(int index = 1; index <= 50000; index++) {
            sb.append(index);
        }

        System.out.println(sb.substring(0, 1024));
        System.out.println(new Date());
    }
}
