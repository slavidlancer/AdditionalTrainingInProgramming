package com.tutorials.testing.unit;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ CheckMultiplyTest.class, WrongTest.class })
public class AllTests {

}
