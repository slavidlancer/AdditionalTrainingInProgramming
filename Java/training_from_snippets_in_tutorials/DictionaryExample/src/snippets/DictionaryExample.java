package snippets;

import java.util.HashMap;
import java.util.Map;

public class DictionaryExample {
    public static void main(String[] args) {
        Map<Integer, String> dictionaryList =
                new HashMap<>();

        dictionaryList.put(1, "a");
        dictionaryList.put(2, "b");

        System.out.printf("%s\n", dictionaryList.get(1));

        for (Integer key : dictionaryList.keySet()) {
            System.out.println(key + ": " + dictionaryList.get(key));
        }
    }
}
