package testing.unit;

public class PrintMessage {
    public String printOnConsole(String message) {
        switch (message) {
            case "number":
                return "number";
            case "text":
                return "text";
            default:
                return "error";
        }
    }
}
