package snippets;

public class MathExample {
    public static void main(String[] args) {
        System.out.println(MathUtils.calculateCirclePerimeter(1.23));
        System.out.println(MathUtils.calculateElipseArea(4.56, 7.89));
        System.out.println(MathUtils.calculations(Globals.state));

        MathUtils.printValue(++Globals.state);
    }
}
