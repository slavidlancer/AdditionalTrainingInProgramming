package tutorials.datastructures;

public class DictionaryEntry<K, V> {
    private K key;
    private V value;

    public DictionaryEntry(K key, V value) {
        super();
        this.key = key;
        this.value = value;
    }

    public K getKey() {
        return this.key;
    }

    public V getValue() {
        return this.value;
    }

    @Override
    public String toString() {
        return String.format("[%s, %s]", key, value);
    }
}
