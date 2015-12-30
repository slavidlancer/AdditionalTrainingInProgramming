package snippets;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatDate {
    public static void main(String[] args) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yy");
        Date dateVariable = sdf.parse("27.10.2001");
        String userInput = "27/10/2008";
        String pattern = "EEEE, dd.MM.yyyy г.";
        String secondPattern = "HH часа и mm мин.";
        SimpleDateFormat sdfNew = new SimpleDateFormat(pattern);
        Date currentDate = new Date();
        String formattedDate = sdfNew.format(currentDate);
        SimpleDateFormat sdfOtherNew = new SimpleDateFormat(secondPattern);
        String formattedTime = sdfOtherNew.format(currentDate);

        System.out.println(dateVariable);

        try {
            dateVariable = sdf.parse(userInput);

            System.out.println(dateVariable);
        } catch (ParseException pe) {
            System.err.println("error in parsing: " + pe);
        }

        System.out.println(formattedDate);
        System.out.println(formattedTime);
    }
}
