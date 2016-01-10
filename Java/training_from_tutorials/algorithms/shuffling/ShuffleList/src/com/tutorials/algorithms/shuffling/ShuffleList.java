package com.tutorials.algorithms.shuffling;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ShuffleList {
    private static void shuffleList(List<Integer> integerList) {
        int size = integerList.size();
        Random random = new Random();
        random.nextInt();
        
        for (int i = 0; i < size; i++) {
            int change = i + random.nextInt(size - i);
            swapList(integerList, i, change);
        }
    }
    
    private static void swapList(List<Integer> intList, int index, int change) {
        int temp = intList.get(index);
        intList.set(index, intList.get(change));
        intList.set(change, temp);
    }
    
    public static void main(String[] args) {
        List<Integer> integerList = new ArrayList<Integer>();
        integerList.add(1);
        integerList.add(2);
        integerList.add(3);
        integerList.add(4);
        integerList.add(5);
        integerList.add(6);
        integerList.add(7);
        
        shuffleList(integerList);
        
        for (int i : integerList) {
            System.out.println(i);
        }
    }
}
