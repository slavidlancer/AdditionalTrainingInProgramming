package com.tutorials.algorithms.sorting;

import java.util.Arrays;

public class QuickSort {
    public static void main(String[] args) {
        int[] arrayToBeSorted = new int[] {38, 27, 43, 3, 9, 82, 10};
        int size = arrayToBeSorted.length;
        
        System.out.println(Arrays.toString(arrayToBeSorted));
        
        sortByQuickSort(arrayToBeSorted, 0, size - 1);
        
        System.out.println(Arrays.toString(arrayToBeSorted));
    }

    private static void sortByQuickSort(int[] arr, int first, int last) {
        if (first >= last) {
            return;
        }
        
        int pivot = partition(arr, first, last);
        
        sortByQuickSort(arr, first, pivot - 1);
        sortByQuickSort(arr, pivot + 1, last);
    }

    private static int partition(int[] arr, int first, int last) {
        int[] temp = new int[last - first + 1];
        int pivot = arr[first];
        int i = 0;
        int j = last - first;
        int k = 0;
        
        for (k = first + 1; k <= last; k++) {
            if (arr[k] <= pivot) {
                temp[i++] = arr[k];
            } else {
                temp[j--] = arr[k];
            }
        }
        
        temp[i] = arr[first];
        
        for (k = first; k <= last; k++) {
            arr[k] = temp[k - first];
        }
        
        return first + i;
    }
}
