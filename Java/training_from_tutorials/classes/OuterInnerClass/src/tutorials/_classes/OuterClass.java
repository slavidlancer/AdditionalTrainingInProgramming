package tutorials._classes;

public class OuterClass {
    private String name;

    private OuterClass(String name) {
        this.name = name;
    }

    private class InnerClass {
        private String name;

        private InnerClass(String name) {
            this.name = name;
        }

        private void printNames() {
            System.out.println("Inner name: " + this.name);
            System.out.println("Outer name: " + OuterClass.this.name);
        }
    }

    public static void main(String[] args) {
        OuterClass outerClass = new OuterClass("outer");
        InnerClass innerClass = outerClass.new InnerClass("inner");

        innerClass.printNames();
    }
}
