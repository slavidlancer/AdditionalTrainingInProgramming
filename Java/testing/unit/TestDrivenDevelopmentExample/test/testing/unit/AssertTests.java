package testing.unit;

import org.junit.*;

import static junit.framework.Assert.assertFalse;
import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertEquals;

public class AssertTests {
    private int num;
    private String temp;
    private String str;

    @Before
    public void setUp() {
        num = 5;
        temp = null;
        str = "a string";
    }

    @Test
    public void testIsNumGreaterThan6() {
        assertFalse(num > 6);
    }

    @Test
    public void testTempIsNotNull() {
        assertNotNull(temp);
    }

    @Test
    public void testStrIsEqualToTheContent() {
        assertEquals("a string", str);
    }
}
