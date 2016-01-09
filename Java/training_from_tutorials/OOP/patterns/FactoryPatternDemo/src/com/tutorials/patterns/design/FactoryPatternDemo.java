package com.tutorials.patterns.design;

public class FactoryPatternDemo {
    public static void main(String[] args) {
        ShapeFactory shapeFactory = new ShapeFactory();
        
        Shape firstShape = shapeFactory.getShape("cirCle");
        firstShape.draw();
        
        Shape secondShape = shapeFactory.getShape("rectangle");
        secondShape.draw();
        
        Shape thirdShape = shapeFactory.getShape("SqUaRe");
        thirdShape.draw();
    }
}
