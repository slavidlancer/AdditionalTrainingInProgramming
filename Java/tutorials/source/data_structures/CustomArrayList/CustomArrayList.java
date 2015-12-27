public class CustomArrayList {
	private Object[] arr;
	private int count;
	private static final int INITIAL_CAPACITY = 4;
	/** Initializes the array-based list – allocate memory **/
	public CustomArrayList() {
		arr = new Object[INITIAL_CAPACITY];
		count = 0;
	}
	/**
	* @return the actual list length
	*/
	public int getLength() {
		return count;
	}

	/**
	* Adds element to the list
	* @param item - the element you want to add
	*/
	public void add(Object item) {
		add(count, item);
	}
	/**
	* Inserts the specified element at given position in this list
	* @param index -
	*
	index at which the specified element is to be inserted
	* @param item -
	*
	element to be inserted
	* @throws IndexOutOfBoundsException
	*/
	public void add(int index, Object item) {
		if (index > count || index < 0) {
			throw new IndexOutOfBoundsException(
				"Invalid index: " + index);
		}

		Object[] extendedArr = arr;

		if (count + 1 == arr.length) {
			extendedArr = new Object[arr.length * 2];
		}

		System.arraycopy(arr, 0, extendedArr, 0, index);
		count++;
		System.arraycopy(
			arr, index, extendedArr, index + 1, count - index - 1);
		extendedArr[index] = item;
		arr = extendedArr;
	}

	/**
	* Returns the index of the first occurrence of the specified
	* element in this list.
	*
	* @param item - the element you are searching
	* @return the index of given element or -1 is not found
	*/
	public int indexOf(Object item) {
		if (item == null) {
			for (int i = 0; i < arr.length; i++) {
				if (arr[i] == null) {
					return i;
				}
			}
		} else {
			for (int i = 0; i < arr.length; i++) {
				if (item.equals(arr[i])) {
					return i;
				}
			}
		}

		return -1;
	}
	/**
	* Clears the list
	*/
	public void clear() {
		arr = new Object[0];
		count = 0;
	}

	/**
	* Checks if an element exists
	* @param item – the item to be checked
	* @return if the item exists
	*/
	public boolean contains(Object item) {
		int index = indexOf(item);
		boolean found = (index != -1);

		return found;
	}
	/**
	* @return the object on given position
	*/
	public Object elementAt(int index) {
		if (index >= count || index < 0) {
			throw new IndexOutOfBoundsException(
				"Invalid index: " + index);
		}

		return arr[index];
	}

	/**
	* Removes the element at the specified index
	* @param index - the index, whose element you want to remove
	* @return the removed element
	*/
	public Object remove(int index) {
		if (index >= count || index < 0) {
			throw new IndexOutOfBoundsException(
				"Invalid index: " + index);
		}

		Object item = arr[index];
		System.arraycopy(arr, index+1, arr, index, count - index + 1);
		arr[count - 1] = null;
		count--;

		return item;
	}
	/**
	* Removes the specified item and returns its index or -1
	* if item does not exists
	* @param item - the item you want to remove
	*/
	public int remove(Object item) {
		int index = indexOf(item);

		if (index == -1) {
			return index;
		}

		System.arraycopy(arr, index + 1, arr, index, count - index + 1);
		count--;

		return index;
	}

	public static void main(String[] args) {
		CustomArrayList shoppingList = new CustomArrayList();
		shoppingList.add("Milk");
		shoppingList.add("Honey");
		shoppingList.add("Olives");
		shoppingList.add("Beer");
		shoppingList.remove("Olives");
		System.out.println("We need to buy:");

		for(int i = 0; i < shoppingList.getLength(); i++) {
			System.out.println(shoppingList.elementAt(i));
		}

		System.out.println("Do we have to buy Bread? " +
			shoppingList.contains("Bread"));
	}
}
