package snippets;

public class PrintReport {
    public static void main(String[] args) {
        Report newReport = new Report();

        newReport.loadFromFile("file.txt");

        int controlValue = Printer.print(newReport);

        if (controlValue == 0) {
            newReport.saveToFile("file.txt");
        } else if (controlValue < 0) {
            System.err.println("error in printing");
        } else {
            System.out.println("unknown");
        }
    }
}
