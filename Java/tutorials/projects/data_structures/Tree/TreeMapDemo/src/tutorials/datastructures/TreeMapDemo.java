package tutorials.datastructures;

import java.util.*;

public class TreeMapDemo {
    private static final String TEXT = "Test text words Count " +
            "words count teSt";

    private static SortedMap<String, Integer> createWordsCounts(String text) {
        Scanner textScanner = new Scanner(text);

        Comparator<String> caseInsensitiveComparator =
                new Comparator<String>(){
                    @Override
                    public int compare(String o1, String o2) {
                        return o1.compareToIgnoreCase(o2);
                    }
                };
        SortedMap<String, Integer> words =
//			new TreeMap<String, Integer>();
                new TreeMap<String, Integer>(caseInsensitiveComparator);

        while (textScanner.hasNext()) {
            String word = textScanner.next();
            Integer count = words.get(word);

            if (count == null) {
                count = 0;
            }

            words.put(word, count + 1);
        }

        return words;
    }

    private static void printWordsCount(
            SortedMap<String, Integer> wordsCounts) {
        for (Map.Entry<String, Integer> wordEntry : wordsCounts.entrySet()) {
            System.out.printf("word '%s' is seen %d times in the text%n",
                    wordEntry.getKey(), wordEntry.getValue());
        }
    }

    public static void main(String[] args) {
        SortedMap<String, Integer> wordsCounts = createWordsCounts(TEXT);

        printWordsCount(wordsCounts);
    }
}
