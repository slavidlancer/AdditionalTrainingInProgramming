package tutorials.othersingleexamples;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class Student implements Comparable<Student> {
    private String firstName;
    private String lastName;

    public Student(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public String getName() {
        return this.firstName + " " + this.lastName;
    }

    @Override
    public int compareTo(Student student) {
        int result = this.lastName.compareTo(student.lastName);

        if (result == 0) {
            result = this.firstName.compareTo(student.firstName);
        }

        return result;
    }

    @Override
    public String toString() {
        String result = firstName + " " + lastName;

        return result;
    }

    public static void main(String[] args) throws FileNotFoundException {
        HashMap<String, ArrayList<Student>> courses =
                new HashMap<String, ArrayList<Student>>();
        Scanner input = new Scanner(new File("out/production/Student/" +
                "tutorials/othersingleexamples/students.txt"), "windows-1251");

        try {
            while (input.hasNext()) {
                String line = input.nextLine();
                String[] studentEntry = line.split("\\s*\\|\\s*");
                String firstName = studentEntry[0];
                String lastName = studentEntry[1];
                String course = studentEntry[2];
                ArrayList<Student> students = courses.get(course);

                if (students == null) {
                    students = new ArrayList<Student>();
                    courses.put(course, students);
                }

                Student student = new Student(firstName, lastName);
                students.add(student);
            }
        } finally {
            input.close();
        }

        Set<String> coursesNames = courses.keySet();

        for (String course : coursesNames) {
            System.out.println("Course " + course + ":");
            ArrayList<Student> students = courses.get(course);
            Student[] studentsArr = students.toArray(
                    new Student[students.size()]);
            Arrays.sort(studentsArr);

            for (Student student : studentsArr) {
                System.out.printf("\t%s\n", student);
            }
        }
    }
}
