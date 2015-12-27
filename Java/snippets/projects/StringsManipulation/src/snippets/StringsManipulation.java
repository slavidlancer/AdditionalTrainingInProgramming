package snippets;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class StringsManipulation {
    public static void main(String[] args) {
        String path = "C:\\Pics\\Rila2008.jpg";
        String fileName = path.substring(8, 16);
        int index = path.lastIndexOf("\\");
        String fullName = path.substring(index + 1);
        String listOfStrings = "dadas, Zdasda, daqwqhkk, dsadalhd.";
        String[] stringArray = listOfStrings.split("[ ,.]"); //split("[ ,.]+")
        String small = "[a-z]";
        String allLetters = "[a-zA-Zа-яА-Я]";
        String nan = "[^0-9]";
        String doc = listOfStrings + small + allLetters + nan + "q@w.er";
        String replacedDoc = doc.replace("q@w.er", "m@n.bv");
        String docToFix = "0892880022 0853445566 0811654321";
        String fixedDoc = docToFix.replaceAll("(08)[0-9]{8}", "$1********");
        String text = "All Kind OF LeTTeRs";
        boolean isEqual = text.toUpperCase().equals("AA");
        String fileData = "    \n\n     dadsaolhdwoqh  dasd    \n\n";
        String reduced = fileData.trim();
        StringBuilder sb = new StringBuilder(15);
        String number = "53";
        int intValue = Integer.parseInt(number);
        String boolValue = "True";
        boolean boolResult = Boolean.parseBoolean(boolValue);
        String dateValue = "27.10.2001";
        String[] dateElements = dateValue.split("[.]");
        String dayString = dateElements[0];
        String monthString = dateElements[1];
        String yearString = dateElements[2];
        int day = Integer.parseInt(dayString);
        int month = Integer.parseInt(monthString);
        int year = Integer.parseInt(yearString);
        System.out.println(month + 1);
        Calendar calendarVariable = new GregorianCalendar(year, month - 1, day);
        Date dateVariable = calendarVariable.getTime();

        System.out.println(path + " " + fileName + " " + index + " " +
                fullName);

        for (String element : stringArray) {
            if (!element.equals("")) {
                System.out.println(element);
            }
        }

        System.out.println(doc);
        System.out.println(replacedDoc);
        System.out.println(docToFix);
        System.out.println(fixedDoc);

        System.out.println(text.toLowerCase());
        System.out.println(isEqual);

        System.out.println(fileData);
        System.out.println(reduced);

        sb.append("check");
        System.out.println(sb.toString());

        System.out.println(intValue + " " + boolResult);

        System.out.println(dateVariable);
    }
}
