package testing.unit;

public class EmployeeBusinessLogic {
    public double calculateAppraisal(EmployeeDetails employee) {
        double appraisal = 0;

        if (employee.getMonthlySalary() < 10000) {
            appraisal = 500;
        } else {
            appraisal = 1000;
        }

        return appraisal;
    }

    public double calculateYearlySalary(EmployeeDetails employee) {
        double yearlySalary = 0;

        yearlySalary = 12 * employee.getMonthlySalary();

        return yearlySalary;
    }

    public void arithmeticOperation() {
        int result = 1 / 0;

        System.out.println(result);
    }
}
