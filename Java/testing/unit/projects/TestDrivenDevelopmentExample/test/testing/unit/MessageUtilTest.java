package testing.unit;

import org.junit.*;

import static junit.framework.Assert.assertEquals;

public class MessageUtilTest {
    private String message;
    MessageUtil messageUtil;

    @Before
    public void setUp() {
        message = "hello world";
        messageUtil = new MessageUtil(message);
    }

    //@Ignore
    @Test
    public void testPrintMessage() {
        //message = "";

        assertEquals(message, messageUtil.printMessage());
    }
}
