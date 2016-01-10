package com.tutorials.algorithms.searching;

public class BinarySearchIterative {
    private static int binarySearch(int[] arr, int key) {
        int start = 0;
        int end = arr.length - 1;
        
        while (start <= end) {
            int mid = (start + end) / 2;
            
            if (arr[mid] == key) {
                return mid;
            }
            
            if (arr[mid] > key) {
                end = mid - 1;
            } else if (arr[mid] < key) {
                start = mid + 1;
            }
        }
        
        return -1;
    }
    
    public static void main(String[] args) {
        int[] arrayToBeSearched = {2, 4, 6, 8, 10, 12, 14, 16};
        int[] arrayToBeSearchedSecond = {6, 34, 78, 123, 432, 900};
        int key = 14;
        
        System.out.println("first array" + "\nsearch for key " + key +
                ", in position: " + binarySearch(arrayToBeSearched, 14));
        System.out.println("\nsecond array" + "\nsearch for key " + key +
                ", in position: " + binarySearch(arrayToBeSearchedSecond, 14));
    }
}
