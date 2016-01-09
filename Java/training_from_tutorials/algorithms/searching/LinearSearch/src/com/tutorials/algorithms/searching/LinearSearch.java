package com.tutorials.algorithms.searching;

public class LinearSearch {
    public static int linearSearch(int[] arr, int key) {
        int size = arr.length;
        
        for (int i = 0; i < size; i++) {
            if (arr[i] == key) {
                return i;
            }
        }
        
        return -1;
    }
    
    public static void main(String[] args) {
        int[] arrayToBeSearched = { 23, 45, 21, 55, 234, 1, 34, 90 };
        int searchKey = 34;
        
        System.out.println("First array\nKey " + searchKey +
                " is found at index: " +
                linearSearch(arrayToBeSearched, searchKey) +
                System.lineSeparator());
        
        int[] arrayToBeSearchedSecond = { 123, 445, 421, 595, 2134, 41, 304,
                190 };
        
        System.out.println("Second array\nKey " + searchKey +
                " is found at index: " +
                linearSearch(arrayToBeSearchedSecond, searchKey));
    }
}
