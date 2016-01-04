package com.tutorials.algorithms.sorting;

import java.util.Arrays;

public class InsertionSort {
    public static void sortByInsertionSort(int[] arr) {
        int size = arr.length;
        
        for (int i = 0; i < size; i++) {
            int temp = arr[i];
            int j;
            
            for (j = i; j > 0; j--) {
                if (arr[j - 1] < temp) {
                    break;
                }
                
                arr[j] = arr[j - 1];
            }
            
            arr[j] = temp;
        }
    }
    
    public static void main(String[] args) {
        int[] arrayToBeSorted = new int[] {38, 27, 43, 3, 9, 82, 10};
        
        System.out.println(Arrays.toString(arrayToBeSorted));
        
        sortByInsertionSort(arrayToBeSorted);
        
        System.out.println(Arrays.toString(arrayToBeSorted));
    }
}
