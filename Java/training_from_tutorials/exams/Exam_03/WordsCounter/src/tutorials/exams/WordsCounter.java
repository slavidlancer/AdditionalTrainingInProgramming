package tutorials.exams;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Scanner;

public class WordsCounter {
    public static void main(String[] args) throws FileNotFoundException {
        ArrayList<String> words = new ArrayList<String>();
        Scanner wordsFile = new Scanner(new File("out/production/" +
                "WordsCounter/tutorials/exams/words.txt"));

        while (wordsFile.hasNextLine()) {
            words.add(wordsFile.nextLine().toLowerCase());
        }

        wordsFile.close();

        int[] wordsCount = new int[words.size()];

        Scanner sampleFile = new Scanner(new File("out/production/" +
                "WordsCounter/tutorials/exams/sample.txt"));

        while (sampleFile.hasNext()) {
            String sampleWord = sampleFile.next().toLowerCase();

            for (String word : words) {
                if (sampleWord.contains(word)) {
                    wordsCount[words.indexOf(word)]++;
                }
            }
        }

        sampleFile.close();

        PrintStream resultFile = new PrintStream("out/production/" +
                "WordsCounter/tutorials/exams/result.txt");

        for (String word : words) {
            resultFile.format("%s - %s%n", word,
                    wordsCount[words.indexOf(word)]);
        }

        resultFile.close();
    }
}
