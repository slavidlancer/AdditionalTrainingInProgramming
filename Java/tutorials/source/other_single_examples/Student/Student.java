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

	public int compareTo(Student student) {
		int result = this.lastName.compareTo(student.lastName);

		if (result == 0) {
			result = this.firstName.compareTo(student.firstName);
		}

		return result;
	}

	@Override
	public String toString() {
		return firstName + " " + lastName;
	}

	public static void main(String[] args) {
		// Read the file and build the hash-table of courses
		HashMap<String, ArrayList<Student>> courses =
			new HashMap<String, ArrayList<Student>>();
		Scanner input =
			new Scanner(new File("Students.txt"), "windows-1251");

		try {
			while (input.hasNext()) {
				String line = input.nextLine();
				String[] studentEntry = line.split("\\s*\\|\\s*");
				String firstName = studentEntry[0];
				String lastName = studentEntry[1];
				String course = studentEntry[2];
				ArrayList<Student> students = courses.get(course);

				if (students == null) {
				// New course -> create a list of students for it
					students = new ArrayList<Student>();
					courses.put(course, students);
				}

				Student student = new Student(firstName, lastName);
				students.add(student);
			}
		} finally {
			input.close();
		}

		// Print the courses and their students
		Set<String> coursesNames = courses.keySet();

		for (String course : coursesNames) {
			System.out.println("Course " + course + ":");
			ArrayList<Student> students = courses.get(course);
			Student[] studentsArr =
				students.toArray(new Student[students.size()]);
			Arrays.sort(studentsArr);

			for (Student student : studentsArr) {
				System.out.printf("\t%s\n", student);
			}
		}
	}
}
