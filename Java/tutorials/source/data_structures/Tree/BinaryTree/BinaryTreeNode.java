private static class BinaryTreeNode<T extends Comparable<T>>
		implements Comparable<BinaryTreeNode<T>> {
	// Contains the value of the node
	T value;
	// Contains the parent of the node
	BinaryTreeNode<T> parent;
	// Contains the left child of the node
	BinaryTreeNode<T> leftChild;
	// Contains the right child of the node
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
