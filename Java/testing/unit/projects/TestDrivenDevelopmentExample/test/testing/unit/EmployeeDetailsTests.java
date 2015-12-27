package testing.unit;

import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

public class EmployeeDetailsTests {
    private EmployeeDetails employee;
    private EmployeeBusinessLogic employeeBusinessLogic;

    @Before
    public void setUp() {
        employee = new EmployeeDetails();
        employeeBusinessLogic = new EmployeeBusinessLogic();

        employee.setName("Family Name");
        employee.setMonthlySalary(8000.50);
        employee.setAge(10);
    }

    @Test
    public void testCalculateAppraisal() {
        double appraisal = employeeBusinessLogic.calculateAppraisal(employee);
        double appraisalExpected = 500;

        assertEquals(appraisalExpected, appraisal);
    }

    @Test
    public void testCalculateYearlySalary() {
        double yearlySalary =
                employeeBusinessLogic.calculateYearlySalary(employee);
        double yearlySalaryExpected = 96006;

        assertEquals(yearlySalaryExpected, yearlySalary);
    }

    @Test(expected = ArithmeticException.class)
    public void testArithmeticOperationException() {
        employeeBusinessLogic.arithmeticOperation();
    }
}
