package tutorials.exams;

import java.io.PrintStream;
import java.util.ArrayList;

public class Group {
    private String name;
    private ArrayList<Student> students;

    public Group(String name) {
        this.name = name;
        this.students = new ArrayList<Student>();
    }

    public String getName() {
        return this.name;
    }

    public ArrayList<Student> getStudents() {
        return this.students;
    }

    public void addStudent(Student student) {
        students.add(student);
    }

    public void printStudents(PrintStream output) {
        output.printf("Group name: %s%n", this.name);
        output.printf("Students in group:%n");

        for (Student student : this.students) {
            output.printf("Name: %s%n", student.getName());
        }
    }
}
