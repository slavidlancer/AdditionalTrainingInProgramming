package tutorials.oop;

import static java.lang.Integer.parseInt;

public class FactoryMethod extends Factory implements IFactory {
    public static Integer valueOf(String str) throws NumberFormatException {
        return new Integer(parseInt(str, 10));
    }
}
