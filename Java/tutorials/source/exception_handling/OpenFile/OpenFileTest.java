package introjavabook;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class OpenFileTest {
	public static void main(String... args) {
		File f = new File("f.txt");
		if (!f.exists()) {
			System.out.println("The file does not exists.");
			return;
		}

		Scanner scan = new Scanner(f);
		String line = scan.nextLine();
		System.out.println("The first line of the file: " + line);
	}
}
