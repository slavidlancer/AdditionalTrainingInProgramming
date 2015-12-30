package snippets;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

public class CaseInsensitiveComparator {
    public static void main(String[] args) {
        Comparator<String> caseInsensitiveComparatorFunction =
                new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.compareToIgnoreCase(o2);
            }
        };

        Map<String, Integer> mapList =
                new TreeMap<String, Integer>(caseInsensitiveComparatorFunction);
    }
}
