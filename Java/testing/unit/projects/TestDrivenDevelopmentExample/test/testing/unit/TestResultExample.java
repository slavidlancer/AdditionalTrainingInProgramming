package testing.unit;

import junit.framework.*;
import org.junit.*;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

public class TestResultExample extends TestResult {
    private String stringValue;
    private float floatValue;

    @Before
    public void setUp() {
        stringValue = "3.14";
        floatValue = 3.14f;
    }

    public synchronized void addError(Test test, Throwable t) {
        super.addError((junit.framework.Test) test, t);
    }

    public synchronized void addFailure(Test test, AssertionFailedError e) {
        super.addFailure((junit.framework.Test) test, e);
    }

    @Test
    public void testStringValueOfPiIsEqualToFloatValueOfPi() {
        assertEquals(stringValue, floatValue);
    }

    public synchronized void stop() {}
}
