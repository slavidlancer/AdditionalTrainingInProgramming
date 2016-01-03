package com.tutorials.testing.unit;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CheckMultiplyTest {
    @Test
    public void testCorrectDataWithIntegers() {
        MathClass tester = new MathClass();
        assertEquals("10 x 5 must be 50", 50, tester.multiply(10, 5));
    }
    
    @Test
    public void testZeroValue() {
        MathClass tester = new MathClass();
        assertEquals("10 x 0 must be 0", 0, tester.multiply(10, 0));
    }
}
