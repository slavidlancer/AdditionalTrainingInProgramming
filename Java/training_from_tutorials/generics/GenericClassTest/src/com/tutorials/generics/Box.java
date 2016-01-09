package com.tutorials.generics;

public class Box<T> {
    private T type;
    
    public void add(T type) {
        this.type = type;
    }
    
    public T get() {
        return this.type;
    }
}
