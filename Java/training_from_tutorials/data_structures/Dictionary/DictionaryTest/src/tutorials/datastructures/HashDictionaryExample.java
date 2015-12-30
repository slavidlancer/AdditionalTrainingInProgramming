package tutorials.datastructures;

public class HashDictionaryExample {
    public static void main(String[] args) {
        HashDictionary<String, Integer> marks =
                new HashDictionary<String, Integer>();
        marks.put("P", 3);
        marks.put("K", 4);
        marks.put("M", 6);
        marks.put("P", 5); // replace key "P"
        marks.remove("K"); // remove key "K"
        marks.remove("123"); // key not found

        for (DictionaryEntry<String, Integer> entry : marks) {
            System.out.print(entry + " ");
        }
    }
}
