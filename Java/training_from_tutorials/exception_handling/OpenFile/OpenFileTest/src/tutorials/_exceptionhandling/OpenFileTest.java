package tutorials._exceptionhandling;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class OpenFileTest {
    public static void main(String[] args) throws FileNotFoundException {
        File file = new File("out/production/OpenFileTest/tutorials/" +
                "_exceptionhandling/test.txt");

        if (!file.exists()) {
            System.out.println("The file does not exists.");

            return;
        }

        Scanner scan = new Scanner(file);
        String line = scan.nextLine();

        System.out.println("The first line of the file: " + line);
    }
}
