package com.tutorials.algorithms.sorting;

import java.util.Arrays;

public class BubbleSort {
    private static void sortByBubbleSort(int[] arr) {
        int size = arr.length;
        
        for (int i = size - 1; i >= 0; i--) {
            for (int j = 0; j < i; j++) {
                if (arr[j] > arr[j + 1]) {
                    swap(arr, j, j + 1);
                }
            }
        }
    }
    
    private static void swap(int[] arr, int firstIndex, int secondIndex) {
        int temp = arr[firstIndex];
        arr[firstIndex] = arr[secondIndex];
        arr[secondIndex] = temp;
    }
    
    public static void main(String[] args) {
        int[] arrayToBeSorted = new int[] {38, 27, 43, 3, 9, 82, 10};
        
        System.out.println(Arrays.toString(arrayToBeSorted));
        
        sortByBubbleSort(arrayToBeSorted);
        
        System.out.println(Arrays.toString(arrayToBeSorted));
    }
}
