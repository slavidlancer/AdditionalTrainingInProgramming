package tutorials.exams;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Scanner;

public class WordsCounterImproved {
    public static void main(String[] args) throws FileNotFoundException {
        ArrayList<String> words = new ArrayList<String>();
        Scanner wordsFile = new Scanner(new File("out/production/" +
                "WordsCounter/tutorials/exams/words.txt"));

        while (wordsFile.hasNextLine()) {
            words.add(wordsFile.nextLine().toLowerCase());
        }

        wordsFile.close();

        Hashtable<String, Integer> wordsCount =
                new Hashtable<String, Integer>();
        Scanner sampleFile = new Scanner(new File("out/production/" +
                "WordsCounter/tutorials/exams/sample.txt"));

        while (sampleFile.hasNext()) {
            String sampleWord = sampleFile.next().toLowerCase();

            for (String word : words) {
                if (sampleWord.contains(word)) {
                    if (wordsCount.containsKey(word)) {
                        wordsCount.put(word, wordsCount.get(word) + 1);
                    } else {
                        wordsCount.put(word, 1);
                    }
                }
            }
        }

        sampleFile.close();

        PrintStream resultFile = new PrintStream("out/production/" +
                "WordsCounter/tutorials/exams/result_improved.txt");

        for (String word : words) {
            int count = wordsCount.containsKey(word) ? wordsCount.get(word) : 0;

            resultFile.format("%s - %s%n", word, count);
        }

        resultFile.close();
    }
}
