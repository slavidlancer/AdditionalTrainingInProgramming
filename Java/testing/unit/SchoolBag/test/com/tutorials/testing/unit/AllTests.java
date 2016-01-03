package com.tutorials.testing.unit;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ AddItemsTestCases.class, InitialBagTestCases.class })
public class AllTests {}
