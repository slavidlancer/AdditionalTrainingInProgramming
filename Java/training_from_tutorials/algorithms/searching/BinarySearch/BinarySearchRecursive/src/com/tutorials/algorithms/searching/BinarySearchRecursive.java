package com.tutorials.algorithms.searching;

public class BinarySearchRecursive {
    private static int binarySearch(int[] arr, int start, int end, int key) {
        if (start < end) {
            int mid = start + ((end - start) / 2);
            
            if (key < arr[mid]) {
                return binarySearch(arr, start, mid, key);
            } else if (key > arr[mid]) {
                return binarySearch(arr, mid + 1, end, key);
            } else {
                return mid;
            }
        }
        
        return -1;
    }
    
    public static void main(String[] args) {
        int[] arrayToBeSearched = {2, 4, 6, 8, 10, 12, 14, 16};
        int sizeFirst = arrayToBeSearched.length;
        int[] arrayToBeSearchedSecond = {6, 12, 34, 78, 123, 432, 900};
        int sizeSecond = arrayToBeSearchedSecond.length;
        int key = 14;
        int foundInIndex = binarySearch(arrayToBeSearched, 0, sizeFirst, key);
        
        System.out.println("first array" + "\nsearch for key " + key +
                ", in position: " + foundInIndex);
        
        foundInIndex = binarySearch(arrayToBeSearchedSecond, 0, sizeSecond,
                key);
        
        System.out.println("\nsecond array" + "\nsearch for key " + key +
                ", in position: " + foundInIndex);
    }
}
