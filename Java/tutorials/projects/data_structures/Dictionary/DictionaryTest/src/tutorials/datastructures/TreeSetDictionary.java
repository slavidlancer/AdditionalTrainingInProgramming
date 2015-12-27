package tutorials.datastructures;

import java.util.Enumeration;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * Implementation of {@link Dictionary} interface using
 * {@link TreeSet}.
 * @param <K> Type of the keys
 * @param <V> Type of the values
 *
 * @author
 */
public class TreeSetDictionary<K extends Comparable<K>, V>
        implements Dictionary<K, V> {
    public class TreeDictionaryEntry extends DictionaryEntry<K, V>
            implements Comparable<DictionaryEntry<K, V>> {
        /**
         * Constructs TreeDictionaryEntry by specified key and value.
         * @param key
         * @param value
         */
        public TreeDictionaryEntry(K key, V value) {
            super(key, value);
        }

        /**
         * Compares this entry with specified entry for order.
         *
         * @param entry
         * @return
         * @see Comparable#compareTo(Object)
         */
        @Override
        public int compareTo(DictionaryEntry<K, V> entry) {
            return this.getKey().compareTo(entry.getKey());
        }
    }

    private TreeSet<TreeDictionaryEntry> tree;

    /**
     * Constructs an empty {@link TreeSetDictionary}.
     */
    public TreeSetDictionary() {
        this.tree = new TreeSet<TreeDictionaryEntry>();
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public void clear() {
        this.tree.clear();
    }

    /**
     * @return {@link SortedSet} with entries of current dictionary.
     * Entries are sorted by key.
     */
    @Override
    public SortedSet<DictionaryEntry<K, V>> entriesSet() {
        SortedSet<DictionaryEntry<K, V>> treeCopy = new
                TreeSet<DictionaryEntry<K, V>>(this.tree);

        return treeCopy;
    }

    /**
     * @param key
     * @return <code>null</code>
     */
    @Override
    public V get(K key) {
        if (this.isEmpty()) {
            return null;
        }

        TreeDictionaryEntry entry = this.tree.first();

        do {
            int compareKeysResult = entry.getKey().compareTo(key);

            if (compareKeysResult < 0) {
                entry = this.tree.higher(entry);
            } else if (compareKeysResult > 0) {
                entry = this.tree.lower(entry);
            } else {
                return entry.getValue();
            }
        } while (entry != null);

        return null;
    }

    @Override
    public boolean remove(K key) {
        DictionaryEntry<K, V> emptyEntry = new TreeDictionaryEntry(
                key, null);

        return this.tree.remove(emptyEntry);
    }

    @Override
    public boolean isEmpty() {
        return this.tree.isEmpty();
    }

    @Override
    public Enumeration<K> keys() {
        return null;
    }

    @Override
    public Enumeration<V> elements() {
        return null;
    }

    @Override
    public V get(Object key) {
        return null;
    }

    /**
     * {@inheritDoc}
     * @throws NullPointerException
     */
    @Override
    public void put(K key, V value) {
        if (key == null) {
            throw new NullPointerException("key cannot be null");
        }

        TreeDictionaryEntry newEntry = new TreeDictionaryEntry(key, value);
        this.tree.add(newEntry);
    }

    @Override
    public V remove(Object key) {
        return null;
    }
}
