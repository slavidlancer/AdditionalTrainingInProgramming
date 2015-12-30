package tutorials.datastructures;

public class Main {
    public static void main(String[] args) {
        BinaryTree<Integer> binaryTree =
                new BinaryTree<Integer>(14,
                        new BinaryTree<Integer>(19,
                                new BinaryTree<Integer> (23),
                                new BinaryTree<Integer> (6,
                                        new BinaryTree<Integer>(10),
                                        new BinaryTree<Integer>(21))),
                        new BinaryTree<Integer>(15,
                                new BinaryTree<Integer>(3),
                                null));

        binaryTree.printPreOrder();

        BinarySearchTree<Integer> binarySearchTree =
                new BinarySearchTree<Integer>();
        binarySearchTree.insert(2);

        binarySearchTree.remove(1);

        System.out.println(binarySearchTree);
    }
}
