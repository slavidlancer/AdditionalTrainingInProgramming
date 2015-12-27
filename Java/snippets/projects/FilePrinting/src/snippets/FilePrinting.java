package snippets;

import java.io.IOException;
import java.io.PrintStream;

public class FilePrinting {
    public static void main(String[] args) throws IOException {
        PrintStream fileWriter = new PrintStream("test.txt");

        for (int number = 0; number <= 22; number++) {
            fileWriter.println(number);
        }

        fileWriter.close();
    }
}
