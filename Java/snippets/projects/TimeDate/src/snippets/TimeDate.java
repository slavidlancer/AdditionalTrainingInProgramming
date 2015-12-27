package snippets;

import java.util.Date;

public class TimeDate {
    public static void main(String[] args) {
        Date dateVariable = new java.util.Date();
        Date dateVariableOther = new Date();

        System.out.printf("time is %1$tH:%1$tM:%1$tS h\n", dateVariable);
        System.out.printf("date is %1$td/%1$tm/%1$tY\n", dateVariableOther);
        System.out.printf("time and date is %1$tA %1$tI:%1$tM%1$tp" +
                "%1$tB/%1$tY\n", dateVariableOther);
    }
}
