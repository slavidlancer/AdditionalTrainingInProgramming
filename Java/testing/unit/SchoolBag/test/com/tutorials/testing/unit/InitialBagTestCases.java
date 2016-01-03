package com.tutorials.testing.unit;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

public class InitialBagTestCases {
    private FirstDayAtSchool school;
    private String[] bag;
    
    @Before
    public void setUp() {
        school = new FirstDayAtSchool();
        bag = new String[] {"Books", "Notebooks", "Pens"};
    }
    
    @Test
    public void testPrepareBag() {
        System.out.println("testPrepareBag()");
        assertArrayEquals(bag, school.prepareBag());
    }
}
