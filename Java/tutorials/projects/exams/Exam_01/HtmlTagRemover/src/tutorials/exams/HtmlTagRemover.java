package tutorials.exams;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

public class HtmlTagRemover {
    private static final String INPUT_FILE_NAME = "out/production/" +
            "HtmlTagRemover/tutorials/exams/Problem1.html";
    private static final String OUTPUT_FILE_NAME = "out/production/" +
            "HtmlTagRemover/tutorials/exams/Problem1_solution01.txt";
    private static final String CHARSET = "windows-1251";

    private static String removeAllTags(String str) {
        String strWithoutTags = str.replaceAll("<[^>]*>", "\n");

        return strWithoutTags;
    }

    private static String removeNewLinesWithWhiteSpace(String str) {
        str = str.replaceAll("\n\\s+", "\n");

        return str;
    }

    private static String trimNewLines(String str) {
        int start = 0;

        while (start < str.length() && str.charAt(start) == '\n') {
            start++;
        }

        int end = str.length() - 1;

        while (end >= 0 && str.charAt(end) == '\n') {
            end--;
        }

        if (start > end) {
            return "";
        }

        String trimmed = str.substring(start, end + 1);

        return trimmed;
    }

    public static void main(String args[]) {
        Scanner scanner = null;
        PrintWriter writer = null;

        try {
            scanner = new Scanner(new File(INPUT_FILE_NAME), CHARSET);
            writer = new PrintWriter(OUTPUT_FILE_NAME, CHARSET);

            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();

                line = removeAllTags(line);
                line = removeNewLinesWithWhiteSpace(line);
                line = trimNewLines(line);

                if (!line.equals("")) {
                    writer.println(line);
                }
            }
        } catch (IOException ioex) {
            System.err.println("Can not read or write to file: " + ioex);
        } finally {
            if (scanner != null) {
                scanner.close();
            }

            if (writer != null) {
                writer.close();
            }
        }
    }
}
