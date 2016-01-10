package com.tutorials.algorithms.sorting;

import java.util.Arrays;

public class MergeSortOther {
    private static void sortByMergeSort(int[] arr, int first, int last) {
        if (first >= last) {
            return;
        }
        
        int mid = (first + last) / 2;
        
        sortByMergeSort(arr, first, mid);
        sortByMergeSort(arr, mid + 1, last);
        
        merge(arr, first, last);
    }
    
    private static void merge(int[] arr, int first, int last) {
        int mid = (first + last) / 2;
        int i = first;
        int j = mid + 1;
        int size = last - first + 1;
        int[] temp = new int[size];
     
        for (int k = 0; k < size; k++) {
            if (i == mid + 1) {
                temp[k] = arr[j++];
            } else if (j == last + 1) {
                temp[k] = arr[i++];
            } else if (arr[i] < arr[j]) {
                temp[k] = arr[i++];
            } else {
                temp[k] = arr[j++];
            }
        }
        
        for (i = first; i <= last; i++) {
            arr[i] = temp[i - first];
        }
    }

    public static void main(String[] args) {
        int[] arrayToBeSorted = new int[] {38, 27, 43, 3, 9, 82, 10};
        int size = arrayToBeSorted.length;
        
        System.out.println(Arrays.toString(arrayToBeSorted));
        
        sortByMergeSort(arrayToBeSorted, 0, size - 1);
        
        System.out.println(Arrays.toString(arrayToBeSorted));
    }
}
