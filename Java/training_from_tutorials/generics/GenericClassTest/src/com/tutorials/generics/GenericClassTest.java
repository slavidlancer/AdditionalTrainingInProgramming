package com.tutorials.generics;

public class GenericClassTest {
    public static void main(String[] args) {
        Box<Integer> integerBox = new Box<Integer>();
        Box<String> stringBox = new Box<String>();
        
        integerBox.add(new Integer(10));
        stringBox.add("string value");
        
        System.out.println(integerBox.get());
        System.out.println(stringBox.get());
    }
}
