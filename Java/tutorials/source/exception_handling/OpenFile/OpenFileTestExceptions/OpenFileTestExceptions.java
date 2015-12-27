package introjavabook;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class OpenFileTest {
	public static void main(String... args) {
		File f = new File("f.txt");
		Scanner scan;
		try {
			scan = new Scanner(f);
		} catch (FileNotFoundException e) {
			System.out.println("The file does not exists.");
			return;
		}

		String line = scan.nextLine();
		System.out.println("The first line of the file: " + line);
	}
}


