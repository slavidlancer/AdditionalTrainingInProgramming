package com.tutorials.generics;

public class MaximumTest {
    public static <T extends Comparable<T>> T maximum(T x, T y, T z) {
        T max = x;
        
        if (y.compareTo(max) > 0) {
            max = y;
        }
        
        if (z.compareTo(max) > 0) {
            max = z;
        }
        
        return max;
    }
    
    public static void main(String[] args) {
        System.out.printf("%d %d %d : %d is max\n", 3, 4, 5, maximum(3, 4, 5));
        
        System.out.printf("%.2f %.2f %.2f : %.2f is max\n", 1.10, 2.20, 0.99,
                maximum(1.10, 2.20, 0.99));
        
        System.out.printf("%s %s %s : %s is max\n", "abcd", "wxyz", "middle",
                maximum("abcd", "wxyz", "middle"));
    }
}
