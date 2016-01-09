package com.tutorials.patterns.design;

public class SingletonPatternDemo {
    public static void main(String[] args) {
        //The constructor SingleObject() is not visible
        //SingleObject singleObject = new SingleObject();
        
        SingleObject singleObject = SingleObject.getInstance();
        
        System.out.println(singleObject);
        
        singleObject.showMessage();
    }
}
