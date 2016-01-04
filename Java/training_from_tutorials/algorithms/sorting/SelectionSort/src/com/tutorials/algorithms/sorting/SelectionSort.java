package com.tutorials.algorithms.sorting;

import java.util.Arrays;

public class SelectionSort {
    public static void sortBySelectionSort(int[] arr) {
        int size = arr.length;
        
        for (int i = 0; i < size - 1; i++) {
            int minIndex = i;
            
            for (int j = i + 1; j < size; j++) {
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }
            
            swap(arr, i, minIndex);
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
        
        sortBySelectionSort(arrayToBeSorted);
        
        System.out.println(Arrays.toString(arrayToBeSorted));
    }
}
