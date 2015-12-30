package tutorials.exams;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

public class HtmlTagRemoverCharBuffer {
    private static final String INPUT_FILE_NAME = "out/production/" +
            "HtmlTagRemover/tutorials/exams/Problem1.html";
    private static final String OUTPUT_FILE_NAME = "out/production/" +
            "HtmlTagRemover/tutorials/exams/Problem1_solution02.txt";
    private static final String CHARSET = "windows-1251";

    private static void printBuffer(PrintWriter writer, StringBuilder buffer) {
        String str = buffer.toString();
        String trimmed = str.trim();
        String textOnly = removeNewLinesWithWhiteSpace(trimmed);

        if (textOnly.length() != 0) {
            writer.println(textOnly);
        }
    }

    private static String removeNewLinesWithWhiteSpace(String str) {
        str = str.replaceAll("\n\\s+", "\n");

        return str;
    }

    public static void main(String args[]) throws IOException {
        InputStreamReader reader = null;
        PrintWriter writer = null;

        try {
            reader = new InputStreamReader(new FileInputStream(INPUT_FILE_NAME),
                    CHARSET);
            writer = new PrintWriter(OUTPUT_FILE_NAME, CHARSET);

            boolean isInTag = false;
            StringBuilder buffer = new StringBuilder();

            while (true) {
                int nextChar = reader.read();

                if (nextChar == -1) {
                    printBuffer(writer, buffer);

                    break;
                }

                char ch = (char) nextChar;

                if (ch == '<') {
                    if (!isInTag) {
                        printBuffer(writer, buffer);
                    }

                    buffer.setLength(0);
                    isInTag = true;
                } else if (ch == '>') {
                    isInTag = false;
                } else {
                    if (!isInTag) {
                        buffer.append(ch);
                    }
                }
            }
        } catch (IOException ioex) {
            System.err.println("Can not read or write to file: " + ioex);

            ioex.printStackTrace();
        } finally {
            if (reader != null) {
                reader.close();
            }

            if (writer != null) {
                writer.close();
            }
        }
    }
}
