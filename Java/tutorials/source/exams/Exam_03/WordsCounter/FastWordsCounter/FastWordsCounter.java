import java.util.*;
import java.io.*;

public class FastWordsCounter {
	public static void main(String[] args)
			throws FileNotFoundException {
		ArrayList<String> words = new ArrayList<String>();
		Hashtable<String, Integer> wordsCount =
			new Hashtable<String, Integer>();
		Scanner wordsFile = new Scanner(new File("words.txt"));

		while (wordsFile.hasNextLine()) {
			String word = wordsFile.nextLine().toLowerCase();
			words.add(word);
			wordsCount.put(word, 0);
		}

		wordsFile.close();

		Scanner sampleFile = new Scanner(new File("sample.txt"));

		while (sampleFile.hasNext()) {
			String word = sampleFile.next().toLowerCase();
			Integer count = wordsCount.get(word);

			if (count != null) {
				wordsCount.put(word, count + 1);
			}
		}

		sampleFile.close();

		PrintStream resultFile = new PrintStream("result.txt");

		for (String word : words) {
			int count = wordsCount.get(word);
			resultFile.format("%s - %s%n", word, count);
		}

		resultFile.close();
	}
}
