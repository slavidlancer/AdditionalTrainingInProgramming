package testing.unit;

import org.junit.*;

public class AnnotationExamplesTests {
    @BeforeClass
    public static void beforeClass() {
        System.out.println("in before class");
    }

    @AfterClass
    public static void afterClass() {
        System.out.println("in after class");
    }

    @Before
    public void setUp() {
        System.out.println("in before/set up");
    }

    @After
    public void tearDown() {
        System.out.println("in after/tear down");
    }

    @Test
    public void testSample() {
        System.out.println("in test");
    }

    @Ignore
    @Test
    public void testIgnored() {
        System.out.println("in ignored test");
    }

    @Test
    public void testCase1() {
        System.out.println("in test case 1");
    }

    @Test
    public void testCase2() {
        System.out.println("in test case 2");
    }
}
