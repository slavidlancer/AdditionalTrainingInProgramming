package testing.unit;

import junit.framework.TestCase;
import org.junit.*;

public class TestCaseExample extends TestCase {
    private double value1;
    private double value2;

    @Before
    public void setUp() {
        value1 = 2.0;
        value2 = 3.0;
    }

    @After
    public void tearDown() {
        value1 = 0.0;
        value2 = 0.0;
    }

    @Test
    public void testExample() {
        System.out.println("test case number: " + this.countTestCases());

        String name = this.getName();
        System.out.println("test case name: " + name);

        /*this.setName("testCheckExample");
        String newName = this.getName();
        System.out.println("test case name: " + newName);*/

        assertEquals(value1, value2);
    }
}
