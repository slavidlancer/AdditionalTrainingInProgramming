package tutorials.othersingleexamples;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class FixingSubtitles {
    private static final int COEFFICIENT = 2;
    private static final int ADDITION = 5000;
    private static final String INPUT_FILE = "out/production/" +
            "FixingSubtitles/tutorials/othersingleexamples/GORA.sub";
    private static final String OUTPUT_FILE = "out/production/" +
            "FixingSubtitles/tutorials/othersingleexamples/fixed.sub";

    private static String fixLine(String line) {
        int bracketFromIndex = line.indexOf('}');
        String fromTime = line.substring(1, bracketFromIndex);
        int newFromTime = Integer.parseInt(fromTime) * COEFFICIENT + ADDITION;
        int bracketToIndex = line.indexOf('}', bracketFromIndex + 1);
        String toTime = line.substring(bracketFromIndex + 2, bracketToIndex);
        int newToTime = Integer.parseInt(toTime) * COEFFICIENT + ADDITION;
        String fixedLine = "{" + newFromTime + "}" + "{" + newToTime + "}" +
                line.substring(bracketToIndex + 1);

        return fixedLine;
    }

    public static void main(String[] args) {
        Scanner fileInput = null;
        PrintStream fileOutput = null;

        try {
            fileInput = new Scanner(new File(INPUT_FILE), "windows-1251");
            fileOutput = new PrintStream(OUTPUT_FILE, "windows-1251");
            String line;

            while (fileInput.hasNextLine()) {
                line = fileInput.nextLine();
                String fixedLine = fixLine(line);
                fileOutput.println(fixedLine);
            }
        } catch (FileNotFoundException fnfe) {
            System.err.println(fnfe.getMessage());
        } catch (UnsupportedEncodingException uee) {
            System.err.println(uee.getMessage());
        } finally {
            if (null != fileInput) {
                fileInput.close();
            }

            if (null != fileOutput) {
                fileOutput.close();
            }
        }
    }
}
