package tutorials.exams;

public class SchoolTest {
    public static void addObjectsToSchool(School school) {
        Teacher teacher01 = new Teacher("D", "G");
        Teacher teacher02 = new Teacher("H", "N");

        school.addTeacher(teacher01);
        school.addTeacher(teacher02);

        Group groupEnglish = new Group("English");
        groupEnglish.addStudent(new Student("I", "P"));
        groupEnglish.addStudent(new Student("V", "T"));
        groupEnglish.addStudent(new Student("E", "M"));
        groupEnglish.addStudent(new Student("R", "G"));
        groupEnglish.addStudent(new Student("M", "S"));
        groupEnglish.addStudent(new Student("I", "P"));
        school.addGroup(groupEnglish);
        teacher02.addGroup(groupEnglish);

        Group groupFrench = new Group("French");
        groupFrench.addStudent(new Student("P", "P"));
        groupFrench.addStudent(new Student("V", "V"));
        school.addGroup(groupFrench);
        teacher02.addGroup(groupFrench);

        Group groupInformatics = new Group("Informatics");
        groupInformatics.addStudent(new Student("M", "K"));
        groupInformatics.addStudent(new Student("P", "T"));
        groupInformatics.addStudent(new Student("I", "B"));
        groupInformatics.addStudent(new Student("M", "I"));
        groupInformatics.addStudent(new Student("H", "T"));
        school.addGroup(groupInformatics);
        teacher01.addGroup(groupInformatics);
    }

    public static void main(String[] args) {
        School school = new School("DaSkoolo");

        addObjectsToSchool(school);

        for (Teacher teacher : school.getTeachers()) {
            teacher.printGroups(System.out);

            System.out.println();
        }
    }
}
