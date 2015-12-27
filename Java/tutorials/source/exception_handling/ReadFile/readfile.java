public class ReadFile {
	public static void readFile(String fileName) {
		FileInputStream fis = new FileInputStream(fileName);
		BufferedReader in = new BufferedReader(
			new InputStreamReader(fis));
		String tmp = null;

		while ((tmp = in.readLine()) != null) {
			System.out.println(tmp);
		}

		in.close();
		fis.close();
	}
}
