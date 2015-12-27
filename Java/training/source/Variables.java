import java.util.Arrays;

class Variables {
	public static void main (String[] args) {
		byte centuries = 20;
		byte[] bt = {1, 2, 3};
		short years = 2000;
		short a = 3;
		short b = -4;
		int days = 730480;
		int t = 6;
		int[] num = {1, 2, 3, 4, 5, 6, 7};
		int[] arr = new int[5];
		arr[0] = 1;
		double[][] mas = {
			{1, 2, 3, 4, 5, 6, 7},
			{7, 6, 5, 4, 3, 2, 1},
		};
		long hours = 17531520;
		float fl = 20.1f;
		double db = 20.19d;
		boolean bu = true;
		char ch = '`';
		int pr = 0xABCD;
		double expr = 1.25e+5;
		float pi = 3.1415f;
		double chpi = Math.PI;
		String ime = "name";
		String na = new String();
		Object container = "number " + 0.1f;

		System.out.println(centuries + " centuries is " + years + " years, or " + days + " days, or " + hours + " hours.");
		System.out.println("Variables:\n" + fl + " " + db + " " + bu + " " + ch + ".");

		bu = (fl == db);

		System.out.println(bu+ "\n" +ime+ "\n" + na + "\n" + bt + "\n" + pr + "\n" + expr + "\n" + container);
		System.out.println(t==6 ? (t|=1) : (t/=1));
		System.out.println(ime instanceof String);
		System.out.println(~a + " " + ~b);
		System.out.print("hello\n");
		System.out.printf("%s hello\n", ime);
		System.out.printf("%.2f %f%n", pi, chpi);
		System.out.printf("The time is: %1$tH:%1$tM:%1$tS.\n", new java.util.Date());
		System.out.printf("The date is: %1$td/%1$tm/%1$tY.\n", new java.util.Date());
		System.out.printf("%1$tA, %1$tB.\n", new java.util.Date());
		System.out.println(java.util.Locale.getDefault());
		System.err.println("This is error!");

		for (int i:num) {
			System.out.printf("%d ", i);
		}

		System.out.println();
		int i = 0;

		for (; i < arr.length; i++) {
			System.out.printf("%d ", arr[i]);
		}

		System.out.println(Arrays.toString(arr));
	}
}
