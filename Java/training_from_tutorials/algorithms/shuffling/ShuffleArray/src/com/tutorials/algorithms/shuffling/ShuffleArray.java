package com.tutorials.algorithms.shuffling;

import java.util.Random;

public class ShuffleArray {
    private static void shuffleArray(int[] arr) {
        int size = arr.length;
        Random random = new Random();
        random.nextInt();
        
        for (int i = 0; i < size; i++) {
            int change = i + random.nextInt(size - i);
            swap(arr, i, change);
        }
    }
    
    private static void swap(int[] arr, int index, int change) {
        int temp = arr[index];
        arr[index] = arr[change];
        arr[change] = temp;
    }
    
    public static void main(String[] args) {
        int[] arrayToShuffle = {1, 2, 3, 4, 5, 6, 7};
        
        shuffleArray(arrayToShuffle);
        
        for (int i : arrayToShuffle) {
            System.out.println(i);
        }
    }
}
