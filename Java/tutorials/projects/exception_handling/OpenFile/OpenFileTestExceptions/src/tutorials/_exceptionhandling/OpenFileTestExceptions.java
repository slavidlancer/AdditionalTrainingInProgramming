package tutorials._exceptionhandling;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class OpenFileTestExceptions {
    public static void main(String[] args) {
        File file = new File("out/production/OpenFileTestExceptions/" +
                "tutorials/_exceptionhandling/test.txt");
        Scanner scan;

        try {
            scan = new Scanner(file);
        } catch (FileNotFoundException e) {
            System.out.println("The file does not exists.");

            return;
        }

        String line = scan.nextLine();

        System.out.println("The first line of the file: " + line);
    }
}
