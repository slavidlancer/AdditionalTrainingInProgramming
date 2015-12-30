package tutorials.othersingleexamples;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class CountWordOccurrences {
    public static void main(String[] args) {
        String fileName = "out/production/CountWordOccurrences/tutorials/" +
                "othersingleexamples/sample.txt";
        Scanner fileReader = null;
        int occurrences = 0;
        String word = "Java";

        try {
            fileReader = new Scanner(new File(fileName));
            System.out.println("File " + fileName + " opened.");

            while (fileReader.hasNextLine()) {
                String line = fileReader.nextLine();
                int index = line.indexOf(word);

                while (index != -1) {
                    occurrences++;
                    index = line.indexOf(word, (index + 1));
                }
            }
        } catch (FileNotFoundException fnf) {
            System.out.println("File " + fileName + " not found.");
        } catch (NullPointerException npe) {
            System.out.println("File " + fileName + " not found.");
        } finally {
            if (fileReader != null) {
                fileReader.close();
            }

            System.out.println("Scanner closed.");
        }

        System.out.printf("The word %s occurs %d times", word, occurrences);
    }
}
