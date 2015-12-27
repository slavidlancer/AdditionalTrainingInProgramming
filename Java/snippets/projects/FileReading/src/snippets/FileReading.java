package snippets;

import java.io.File;
import java.io.IOException;
//import java.io.InputStream;
import java.util.Scanner;

public class FileReading {
    public static void main(String[] args) throws IOException {
        //System.out.println(System.getProperty("user.dir"));
        /*InputStream v = InputStream.class.getResourceAsStream("test.txt");
        //null?
        System.out.println(v);*/
        File fileVariable = new File(
                "out/production/FileReading/snippets/test.txt");
        Scanner fileReader = new Scanner(fileVariable);
        int lineNumber = 0;

        while (fileReader.hasNextLine()) {
            lineNumber++;

            System.out.printf("%d: %s%n", lineNumber, fileReader.nextLine());
        }

        fileReader.close();
    }
}
