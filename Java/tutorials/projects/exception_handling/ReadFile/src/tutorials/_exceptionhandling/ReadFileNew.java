package tutorials._exceptionhandling;

import java.io.*;

public class ReadFileNew {
    public static void readFileNew(String fileName) throws IOException {
        try {
            FileInputStream fis = new FileInputStream(fileName);
            BufferedReader in = new BufferedReader(new InputStreamReader(fis));
            String tmp = null;

            while ((tmp = in.readLine()) != null) {
                System.out.println(tmp);
            }

            in.close();
            fis.close();
        } catch (FileNotFoundException fnfe) {
            System.out.println("The file \"" + fileName +
                    "\" does not exist! Unable to read it.");
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }
}
