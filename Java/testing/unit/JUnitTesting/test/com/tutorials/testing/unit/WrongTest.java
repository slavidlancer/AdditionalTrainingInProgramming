package com.tutorials.testing.unit;

import static org.junit.Assert.*;

import org.junit.Test;

public class WrongTest {
    @Test
    public void testWrongResult() {
        MathClass tester = new MathClass();
        assertEquals("double value inserted", 0, tester.multiply(1.23, 5));
    }
    
    @Test
    public void testWrongInputData() {
        MathClass tester = new MathClass();
        assertEquals("string values inserted", "", tester.multiply("", ""));
    }
}
