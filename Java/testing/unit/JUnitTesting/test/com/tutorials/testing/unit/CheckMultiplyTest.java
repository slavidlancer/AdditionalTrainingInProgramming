package com.tutorials.testing.unit;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CheckMultiplyTest {
    @Test
    public void test() {
        MathClass tester = new MathClass();
        assertEquals("10 x 5 must be 50", 50, tester.multiply(10, 5));
    }
}
