package tutorials.datastructures;

public class BinarySearchTree<T extends Comparable<T>>  {
    /**
     * Represents a binary tree node.
     * @author
     * @param <T>
     */

    private static class BinaryTreeNode<T extends Comparable<T>>
            implements Comparable<BinaryTreeNode<T>> {
        T value;
        BinaryTreeNode<T> parent;
        BinaryTreeNode<T> leftChild;
        BinaryTreeNode<T> rightChild;

        /**
         * Constructs the tree node.
         * @param value – the new value.
         */
        public BinaryTreeNode(T value) {
            this.value = value;
            this.parent = null;
            this.leftChild = null;
            this.rightChild = null;
        }

        @Override
        public String toString() {
            return this.value.toString();
        }

        @Override
        public int hashCode() {
            return this.value.hashCode();
        }

        @Override
        public boolean equals(Object obj) {
            BinaryTreeNode<T> other = (BinaryTreeNode<T>)obj;

            return this.compareTo(other) == 0;
        }

        public int compareTo(BinaryTreeNode<T> other) {
            return this.value.compareTo(other.value);
        }
    }

    private BinaryTreeNode<T> root;

    /**
     * Constructs the tree.
     */
    public BinarySearchTree() {
        this.root = null;
    }

    /**
     * @param value
     */
    public void insert(T value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }

        this.root = insert(value, null, root);
    }

    /**
     * @param value
     * @param parentNode
     * @param node
     * @return
     */
    private BinaryTreeNode<T> insert(T value, BinaryTreeNode<T> parentNode,
                                     BinaryTreeNode<T> node) {
        if (node == null) {
            node = new BinaryTreeNode<T>(value);
            node.parent = parentNode;
        } else {
            int compareTo = value.compareTo(node.value);

            if (compareTo < 0) {
                node.leftChild = insert(value, node, node.leftChild);
            } else if (compareTo > 0) {
                node.rightChild = insert(value, node, node.rightChild);
            }
        }

        return node;
    }

    /**
     * @param value
     * @return
     */
    private BinaryTreeNode<T> find(T value) {
        BinaryTreeNode<T> node = this.root;

        while (node != null) {
            int compareTo = value.compareTo(node.value);

            if (compareTo < 0) {
                node = node.leftChild;
            } else if (compareTo > 0) {
                node = node.rightChild;
            } else {
                break;
            }
        }

        return node;
    }

    /**
     * @param value
     */
    public void remove(T value) {
        BinaryTreeNode<T> nodeToDelete = find(value);

        if (nodeToDelete == null) {
            return;
        }

        remove(nodeToDelete);
    }

    public void remove(BinaryTreeNode<T> node) {
        if (node.leftChild != null && node.rightChild != null) {
            BinaryTreeNode<T> replacement = node.rightChild;

            while (replacement.leftChild != null) {
                replacement = replacement.leftChild;
            }

            node.value = replacement.value;
            node = replacement;
        }

        BinaryTreeNode<T> theChild = node.leftChild != null ?
                node.leftChild : node.rightChild;

        if (theChild != null) {
            theChild.parent = node.parent;

            if (node.parent == null) {
                root = theChild;
            } else {
                if (node.parent.leftChild == node) {
                    node.parent.leftChild = theChild;
                } else {
                    node.parent.rightChild = theChild;
                }
            }
        } else {
            if (node.parent == null) {
                root = null;
            } else {
                if (node.parent.leftChild == node) {
                    node.parent.leftChild = null;
                } else {
                    node.parent.rightChild = null;
                }
            }
        }
    }
}
