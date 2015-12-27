package tutorials._exceptionhandling;

import java.io.*;

public class ReadFileComplete {
    public static void readFileComplete(String fileName) throws IOException {
        FileInputStream fis = null;
        BufferedReader in = null;

        try {
            fis = new FileInputStream(fileName);
            in = new BufferedReader(new InputStreamReader(fis));
            String tmp = null;

            while ((tmp = in.readLine()) != null) {
                System.out.println(tmp);
            }

            //throw new IOException("IO exception", new Throwable());
        } catch (FileNotFoundException fnfe) {
            System.out.println("The file \"" + fileName +
                    "\" does not exist! Unable to read it.");
        } finally {
            if (in != null) {
                in.close();
            }

            if (fis != null) {
                fis.close();
            }
        }
    }
}
