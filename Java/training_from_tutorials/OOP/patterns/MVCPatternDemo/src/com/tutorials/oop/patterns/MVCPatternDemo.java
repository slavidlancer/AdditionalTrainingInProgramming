package com.tutorials.oop.patterns;

public class MVCPatternDemo {
    public static void main(String[] args) {
        Student model = retriveStudentFromDatabase();
        StudentView view = new StudentView();
        StudentController controller = new StudentController(model, view);
        
        controller.updateView();
        controller.setStudentName("new name");
        System.out.println();
        controller.updateView();
    }
    
    private static Student retriveStudentFromDatabase() {
        Student student = new Student();
        student.setName("student name");
        student.setRollNo("10");
        
        return student;
    }
}
