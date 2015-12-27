package tutorials._exceptionhandling;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        /*ReadFile.readFile("out/production/ReadFile/tutorials/" +
                "_exceptionhandling/test.txt");*/

        /*ReadFileNew.readFileNew("out/production/ReadFile/tutorials/" +
                "_exceptionhandling/test.txt");*/

        try {
            ReadFileComplete.readFileComplete("out/production/ReadFile/" +
                    "tutorials/_exceptionhandling/test.txt");
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }
}
