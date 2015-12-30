package snippets;

public class Report {
    public boolean loadFromFile(String fileName) {
        System.out.println(fileName + " is loaded");

        return true;
    }

    public boolean saveToFile(String fileName) {
        System.out.println("saved to " + fileName);

        return true;
    }
}
