package testing.unit;

import org.junit.*;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertFalse;
import static org.junit.Assert.*;

public class AssertionExampleTests {
    private String str1;
    private String str2;
    private String str3;
    private String str4;
    private String str5;
    private int value1;
    private int value2;
    private String[] expectedArray;
    private String[] resultArray;

    @Before
    public void setUp() {
        str1 = "abc";
        str2 = "abc";
        str3 = null;
        str4 = "abc";
        str5 = "abc";
        value1 = 5;
        value2 = 6;
        expectedArray = new String[] { "one", "two", "three", "four" };
        resultArray = new String[] { "one", "two", "three", "four" };
    }

    @Test
    public void testEqualObjects() {
        assertEquals(str1, str2);
    }

    @Test
    public void testIsConditionTrue() {
        assertTrue(value1 < value2);
    }

    @Test
    public void testIsConditionFalse() {
        assertFalse(value1 > value2);
    }

    @Test
    public void testObjectIsNotNull() {
        assertNotNull(str1);
    }

    @Test
    public void testObjectIsNull() {
        assertNull(str3);
    }

    @Test
    public void testReferencesToSameObject() {
        assertSame(str4, str5);
    }

    @Test
    public void testReferencesNotToSameObject() {
        assertNotSame(str1, str3);
    }

    @Test
    public void testEqualArrays() {
        assertArrayEquals(expectedArray, resultArray);
    }
}
