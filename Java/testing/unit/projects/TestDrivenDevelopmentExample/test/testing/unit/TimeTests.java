package testing.unit;

import org.junit.*;

import static junit.framework.Assert.assertEquals;

public class TimeTests {
    private String message;
    MessageUtil messageUtil;

    @Before
    public void setUp() {
        message = "name";
        messageUtil = new MessageUtil(message);
    }

    @Test(timeout = 1000)
    public void testPrintMessage() {
        System.out.println("inside testPrintMessage()");

        messageUtil.printMessage();
    }

    @Test
    public void testSalutationMessage() {
        System.out.println("inside testSalutationMessage()");

        message += " second";

        assertEquals(message, messageUtil.salutationMessage());
    }
}
