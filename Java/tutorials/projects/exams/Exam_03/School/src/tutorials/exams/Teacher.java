package tutorials.exams;

import java.io.PrintStream;
import java.util.ArrayList;

public class Teacher {
    private String firstName;
    private String lastName;
    private ArrayList<Group> groups;

    public Teacher(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.groups = new ArrayList<Group>();
    }

    public void addGroup(Group group) {
        this.groups.add(group);
    }

    public void printGroups(PrintStream output) {
        output.printf("Teacher name: %s %s%n", this.firstName, this.lastName);
        output.printf("Groups of teacher:%n");

        for (Group group : this.groups) {
            group.printStudents(output);
        }
    }
}
