package com.tutorials.testing.unit;

import static org.junit.Assert.*;

import java.util.Arrays;

import org.junit.Before;
import org.junit.Test;

public class AddItemsTestCases {
    private FirstDayAtSchool school;
    private String[] bag;
    
    @Before
    public void setUp() {
        school = new FirstDayAtSchool();
        bag = new String[] {"Books", "Notebooks", "Pens", "Pencils"};
    }
    
    @Test
    public void testAddPencils() {
        System.out.println("testAddPencils()");
        assertEquals(Arrays.toString(bag), school.addPencils());
    }
}
