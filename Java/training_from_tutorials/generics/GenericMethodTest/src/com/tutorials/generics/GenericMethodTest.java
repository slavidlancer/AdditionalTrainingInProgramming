package com.tutorials.generics;

public class GenericMethodTest {
    public static <T> void printArray(T[] inputArray) {
        for (T element : inputArray) {
            System.out.printf("%s ", element);
        }
        
        System.out.println();
    }
    
    public static void main(String[] args) {
        Integer[] intArray = { 1, 2, 3, 4, 5 };
        Double[] doubleArray = { 1.10, 2.20, 3.30, 4.40, 5.50 };
        Character[] charArray = { 'c', 'h', 'a', 'r', 's' };
        
        System.out.println("intArray:" );
        printArray(intArray);
        
        System.out.println("doubleArray:" );
        printArray(doubleArray);
        
        System.out.println("charArray:" );
        printArray(charArray);
    }
}
