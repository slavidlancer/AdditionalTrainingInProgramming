package snippets;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class FileReadingTryCatch {
    public static void main(String[] args) {
        String fileName =
                "out/production/FileReadingTryCatch/snippets/test.txt";
        Scanner fileReader = null;
        int lineNumber = 0;

        try {
            fileReader = new Scanner(new File(fileName));

            System.out.println("file " + fileName + " is opened");

            while (fileReader.hasNextLine()) {
                lineNumber++;

                System.out.printf("line %d: %s%n", lineNumber,
                        fileReader.nextLine());
            }
        } catch (FileNotFoundException fnfe) {
            System.out.println("file " + fileName + " is not found: " + fnfe);
        } catch (NullPointerException npe) {
            System.out.println("file " + fileName + " is not found: " + npe);
        } finally {
            if (fileReader != null) {
                fileReader.close();
            }

            System.out.println("scanner is closed");
        }
    }
}
