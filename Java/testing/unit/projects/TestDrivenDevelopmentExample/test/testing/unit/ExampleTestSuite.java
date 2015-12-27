package testing.unit;

import junit.framework.TestResult;
import junit.framework.TestSuite;

public class ExampleTestSuite extends TestSuite {
    public static void main(String[] args) {
        TestSuite suite = new TestSuite(TestCaseExample.class,
                TestResultExample.class, AssertTests.class);
        TestResult result = new TestResult();

        suite.run(result);

        System.out.println("number of test cases: " + result.runCount());
    }
}
