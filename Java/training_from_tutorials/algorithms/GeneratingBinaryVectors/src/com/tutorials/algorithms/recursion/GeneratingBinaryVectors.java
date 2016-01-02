package com.tutorials.algorithms.recursion;

import java.util.Arrays;

public class GeneratingBinaryVectors {
    private static void generate(int index, int[] vector) {
        System.out.println(index + " " + Arrays.toString(vector));
        
        if (index < 0) {
            print(vector);
        } else {
            for (int i = 0; i <= 1; i++) {
                vector[index] = i;
                System.out.println("vector[" + index + "] = " + vector[index]);
                generate(index - 1, vector);
            }
        }
    }
    
    private static void print(int[] vector) {
        for (int i : vector) {
            System.out.print(i + " ");
        }
        
        System.out.println();
    }

    public static void main(String[] args) {
        int number = 8;
        int[] vector = new int[number];
        
        generate(number - 1, vector);
    }
}
