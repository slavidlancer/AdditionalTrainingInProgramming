public class Vik {
	public static void main (String[] args)
			throws java.io.IOException {
		int a = b = c = ch = index = value1 = value2 = maxArray = sumArray = 0; //check
		int[] array = new int[5];
		long companyPhoneNumber = companyFaxNumber = managerPhoneNumber = 0;
		double r = perimeter = surface = 0;
		String companyName = new String();
		String companyAddress = new String();
		String companyWebSite = new String();
		String companyManager = new String();
		String managerFirstName = new String();
		String managerLastName = new String();
		java.util.Scanner input = new java.util.Scanner(System.in);
		java.util.Scanner input2 = new java.util.Scanner(System.in);

		System.out.println (java.util.Locale.getDefault().toString());

//		java.util.Locale.setDefault (new java.util.Locale ("bg_BG"));

//		System.out.println (java.util.Locale.getDefault().toString());
//		System.out.println (1234.56);
//		System.err.println ("this is an error");

		System.out.print ("enter text: ");

		while ((ch = System.in.read()) != '\n') {
			System.out.print ((char) ch);
		}

		System.out.println();

		System.out.print ("enter company name: ");
		companyName = input.nextLine();

		System.out.print ("enter company address: ");
		companyAddress = input.nextLine();

		System.out.print ("enter company phone number: ");
		companyPhoneNumber = input.nextLong();

		System.out.print ("enter company fax number: ");
		companyFaxNumber = input.nextLong();

		System.out.print ("enter company web site: ");
		companyWebSite = input2.nextLine();

		System.out.print ("enter manager's first name: ");
		managerFirstName = input2.nextLine();

		System.out.print ("enter manager's last name: ");
		managerLastName = input2.nextLine();

		System.out.print ("enter manager's phone number: ");
		managerPhoneNumber = input2.nextLong();

		companyManager = managerFirstName + " " + managerLastName;

		System.out.printf("company = %s:\ncompany name = %s\tcompany address = %s\tcompany phone number = %d\tcompany fax number = %d\tcompany web site = %s\t\n\nmanager = %s:\nmanager's first name = %s\tmanager's last name = %s\tmanager's phone number = %d\n", companyName, companyName, companyAddress, companyPhoneNumber, companyFaxNumber, companyWebSite, companyManager, managerFirstName, managerLastName, managerPhoneNumber);

		System.out.print("a = ");
		a = input.nextInt();

		System.out.print("b = ");
		b = input.nextInt();

		System.out.print("c = ");
		c = input.nextInt();

		System.out.printf("%d + %d + %d = %d\n", a, b, c, (a + b + c));

		System.out.print("r = ");
		r = input.nextDouble();

		perimeter = 2 * Math.PI * r;
		surface = Math.PI * r * r;

		System.out.printf("perimeter = %.2f\tsurface = %.2f\n", perimeter, surface);

		System.out.print("value_01 = ");
		value1 = input.nextInt();

		System.out.print("value_02 = ");
		value2 = input.nextInt();

		for (index = value1; index <= value2; index++) {
			if (index % 5 == 0) {
				System.out.printf ("%d\t", index);
			}
		}

		System.out.println();

		System.out.print("value_01 = ");
		value1 = input.nextInt();

		System.out.print("value_02 = ");
		value2 = input.nextInt();

		System.out.println(value1 > value2 ? value1 : value2);

/*		value1 -= value2;
		value2 += value1;
		value1 = value2 - value1;

		System.out.println(value1);*/

		sumArray = 0;

		for (index = 0; index <= 4; index++) {
			System.out.printf("value_%d = ", index);
			array[index] = input.nextInt();

			sumArray += array[index];
		}

		maxArray = array[0];

		for (index = 1; index <= 4; index++) {
			if (array[index] > array[index-1]) {
				maxArray = array[index];
			}
		}

		System.out.println(maxArray);
		System.out.println(sumArray);
	}
}
