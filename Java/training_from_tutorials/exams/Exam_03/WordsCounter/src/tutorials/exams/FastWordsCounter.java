package tutorials.exams;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Scanner;

public class FastWordsCounter {
    public static void main(String[] args) throws FileNotFoundException {
        ArrayList<String> words = new ArrayList<String>();
        Hashtable<String, Integer> wordsCount =
                new Hashtable<String, Integer>();
        Scanner wordsFile = new Scanner(new File("out/production/" +
                "WordsCounter/tutorials/exams/words.txt"));

        while (wordsFile.hasNextLine()) {
            String word = wordsFile.nextLine().toLowerCase();
            words.add(word);
            wordsCount.put(word, 0);
        }

        wordsFile.close();

        Scanner sampleFile = new Scanner(new File("out/production/" +
                "WordsCounter/tutorials/exams/sample.txt"));

        while (sampleFile.hasNext()) {
            String word = sampleFile.next().toLowerCase();
            Integer count = wordsCount.get(word);

            if (count != null) {
                wordsCount.put(word, count + 1);
            }
        }

        sampleFile.close();

        PrintStream resultFile = new PrintStream("out/production/" +
                "WordsCounter/tutorials/exams/result_fast.txt");

        for (String word : words) {
            int count = wordsCount.get(word);

            resultFile.format("%s - %s%n", word, count);
        }

        resultFile.close();
    }
}
