package testing.unit;

import org.hamcrest.CoreMatchers;
import org.junit.Assert;
import org.junit.Test;

public class PrintMessageTests {
    @Test
    public void testPrintMessage() throws Exception {
        PrintMessage printMessage = new PrintMessage();

        String result = printMessage.printOnConsole("number");

        Assert.assertThat(result, CoreMatchers.is("text"));
    }

    @Test
    public void testExample() throws Exception {
        PrintMessage printMessage = new PrintMessage();

        String result = printMessage.printOnConsole("text");

        Assert.assertEquals("text", result);
    }
}
