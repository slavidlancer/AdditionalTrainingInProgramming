package testing.unit;

import org.junit.*;

import java.util.ArrayList;
import java.util.List;

import static junit.framework.Assert.assertEquals;

public class SampleTests {
    private List emptyList;

    @Before
    public void setUp() {
        emptyList = new ArrayList();
    }

    @After
    public void tearDown() {
        emptyList = null;
    }

    @Test
    public void testSomeBehaviour() {
        assertEquals("empty list should have 0 elements", 0, emptyList.size());
    }

    @Test(expected = IndexOutOfBoundsException.class)
    public void testForException() {
        Object obj = emptyList.get(0);
    }
}
