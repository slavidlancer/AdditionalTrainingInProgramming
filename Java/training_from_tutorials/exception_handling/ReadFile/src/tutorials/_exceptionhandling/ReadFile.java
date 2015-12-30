package tutorials._exceptionhandling;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class ReadFile {
    public static void readFile(String fileName) throws IOException {
        FileInputStream fis = new FileInputStream(fileName);
        BufferedReader in = new BufferedReader(new InputStreamReader(fis));
        String tmp = null;

        while ((tmp = in.readLine()) != null) {
            System.out.println(tmp);
        }

        in.close();
        fis.close();
    }
}
