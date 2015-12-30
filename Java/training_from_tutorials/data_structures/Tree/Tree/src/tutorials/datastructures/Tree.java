package tutorials.datastructures;

import java.util.ArrayList;

public class Tree<T> {
    /**
    @author
    * @param <T> - the type of the values
    */
    public static class TreeNode<T> {
        private T value;
        private boolean hasParent;
        private ArrayList<TreeNode<T>> children;

        /**
         * Constructs a tree node.
         * @param value - the value of the node.
         */
        public TreeNode(T value) {
            if (value == null) {
                throw new IllegalArgumentException("Cannot insert null value!");
            }

            this.value = value;
            this.children = new ArrayList<TreeNode<T>>();
        }

        /**
         * @return value
         */
        public T getValue() {
            return this.value;
        }

        /**
         * @param value
         */
        public void setValue(T value) {
            this.value = value;
        }

        /**
         * @param child
         */
        public void addChild(TreeNode<T> child) {
            if (child == null) {
                throw new IllegalArgumentException("Cannot insert null value!");
            }

            if (child.hasParent) {
                throw new IllegalArgumentException(
                        "The node already has a parent!");
            }

            child.hasParent = true;
            this.children.add(child);
        }

        /**
         * @param index - index
         * @return child
         */
        public TreeNode<T> getChild(int index) {
            return this.children.get(index);
        }

        /**
         * @return count
         */
        public int getChildrenCount() {
            return this.children.size();
        }
    }

    private TreeNode<T> root;
    /**
     * Constructs the tree.
     * @param value
     */
    public Tree(T value) {
        if (value == null) {
            throw new IllegalArgumentException("Cannot insert null value!");
        }

        this.root = new TreeNode<T>(value);
    }

    /**
     * Constructs the tree.
     * @param value
     * @param children
     */
    public Tree(T value, Tree<T> ... children) {
        this(value);

        for (Tree<T> child : children) {
            this.root.addChild(child.root);
        }
    }

    /**
     * @return the root node or null
     */
    public TreeNode<T> getRoot()
    {
        return this.root;
    }

    /**
     * @return children
     */
    public ArrayList<TreeNode<T>> getChildNodes() {
        if (this.root != null) {
            return this.root.children;
        }

        return new ArrayList<TreeNode<T>>();
    }

    /**
     * @param root
     * @param spaces
     */
    private void printDFS(TreeNode<T> root, String spaces) {
        if (this.root == null) {
            return;
        }

        System.out.println(spaces + root.getValue());

        TreeNode<T> child = null;

        for (int i = 0; i < root.getChildrenCount(); i++) {
            child = root.getChild(i);
            printDFS(child, spaces + " ");
        }
    }

    /**
     * In Depth First Search (DFS) manner.
     */
    public void printDFS() {
        this.printDFS(this.root, new String());
    }
}
