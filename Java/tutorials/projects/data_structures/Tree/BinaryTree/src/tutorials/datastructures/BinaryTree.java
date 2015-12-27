package tutorials.datastructures;

public class BinaryTree<T> {
    /**
     * @author
     * @param <T> - the type
     */

    public static class BinaryTreeNode<T>
    {
        private T value;
        private boolean hasParent;
        private BinaryTreeNode<T> leftChild;
        private BinaryTreeNode<T> rightChild;

        /**
         * Constructs a binary tree node.
         * @param value
         * @param leftChild
         * @param rightChild
         */
        public BinaryTreeNode(T value, BinaryTreeNode<T> leftChild,
                              BinaryTreeNode<T> rightChild) {
            if (value == null) {
                throw new IllegalArgumentException("Cannot insert null value!");
            }

            this.value = value;
            this.leftChild = leftChild;
            this.rightChild = rightChild;
        }

        /**
         * Constructs a binary tree node with no children.
         * @param value
         */
        public BinaryTreeNode(T value) {
            this(value, null, null);
        }

        /**
         * @return
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
         * @return
         */
        public BinaryTreeNode<T> getLeftChild() {
            return this.leftChild;
        }

        /**
         * @param value
         */
        public void setLeftChild(BinaryTreeNode<T> value) {
            if (value == null || value.hasParent) {
                throw new IllegalArgumentException();
            }

            value.hasParent = true;
            this.leftChild = value;
        }

        /**
         * @return
         */
        public BinaryTreeNode<T> getRightChild() {
            return this.rightChild;
        }

        /**
         * @param value
         */
        public void setRightChild(BinaryTreeNode<T> value) {
            if (value == null || value.hasParent) {
                throw new IllegalArgumentException();
            }

            value.hasParent = true;
            this.rightChild = value;
        }
    }

    private BinaryTreeNode<T> root;

    /**
     * Constructs the tree.
     * @param value
     * @param leftChild
     * @param rightChild
     */
    public BinaryTree(T value, BinaryTree<T> leftChild,
                      BinaryTree<T> rightChild) {
        if (value == null) {
            throw new IllegalArgumentException();
        }

        BinaryTreeNode<T> leftChildNode =
                leftChild != null ? leftChild.root : null;
        BinaryTreeNode<T> rightChildNode =
                rightChild != null ? rightChild.root : null;
        this.root = new BinaryTreeNode<T>(value, leftChildNode, rightChildNode);
    }

    /**
     * Constructs the tree.
     * @param value
     */
    public BinaryTree(T value) {
        this(value, null, null);
    }

    /**
     * @return
     */
    public BinaryTreeNode<T> getRoot() {
        return this.root;
    }

    /**
     * @return
     */
    public BinaryTreeNode<T> getLeftChildNode()
    {
        if (this.root != null) {
            return this.root.getLeftChild();
        }

        return null;
    }

    /**
     * @return
     */
    public BinaryTreeNode<T> getRightChildNode()
    {
        if (this.root != null) {
            return this.root.getRightChild();
        }

        return null;
    }

    /**
     * @param root
     */
    private void printPreOrder(BinaryTreeNode<T> root) {
        if (root == null) {
            return;
        }

        printPreOrder(root.getLeftChild());

        System.out.print(root.getValue() + " ");

        printPreOrder(root.getRightChild());
    }

    /**
     * In pre-order manner.
     */
    public void printPreOrder() {
        printPreOrder(this.root);

        System.out.println();
    }
}
