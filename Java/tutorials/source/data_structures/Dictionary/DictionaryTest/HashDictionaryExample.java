public class HashDictionaryExample {
	public static void main(String[] args) {
		HashDictionary<String, Integer> marks =
			new HashDictionary<String, Integer>();
		marks.put("Pepi", 3);
		marks.put("Kiro", 4);
		marks.put("Mimi", 6);
		marks.put("Pepi", 5); // replace key "Pepi"
		marks.remove("Kiro"); // remove key "Kiro"
		marks.remove("123"); // key not found
		// Use the iterator to traverse all entries
		for (DictionaryEntry<String, Integer> entry : marks) {
			System.out.print(entry + " ");
		}
		// Output: [Mimi, 6] [Pepi, 5]
	}
}
