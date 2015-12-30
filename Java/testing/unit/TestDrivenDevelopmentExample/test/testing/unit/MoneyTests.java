package testing.unit;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class MoneyTests {
    private Money money12CHF;
    private Money money14CHF;
    private Money money7USD;
    private Money money21USD;
    private MoneyBag moneyBag1;
    private MoneyBag moneyBag2;

    @Before
    public void setUp() {
        money12CHF = new Money(12, "CHF");
        money14CHF = new Money(14, "CHF");
        money7USD = new Money(7, "USD");
        money21USD = new Money(21, "USD");
        moneyBag1 = new MoneyBag(money12CHF, money7USD);
        moneyBag1 = new MoneyBag(money14CHF, money21USD);
    }

    @Test
    public void testSimpleAdd() throws Exception {
        Money expected = new Money(26, "CHF");
        Money result = money12CHF.add(money14CHF);

        //error (if equals is not overriden)
        assertTrue(expected.equals(result));

        //error (if equals is not overriden)
        assertEquals(expected, result);
    }

    @Test
    public void testEquals() throws Exception {
        assertTrue(!money12CHF.equals(null));

        assertTrue(!money12CHF.equals(money14CHF));

        assertEquals(money12CHF, money12CHF);

        //error (if equals is not overriden)
        assertEquals(money12CHF, new Money(12, "CHF"));
    }

    @Test
    public void testBagEquals() throws Exception {
        assertTrue(!moneyBag1.equals(null));

        assertTrue(!moneyBag1.equals(moneyBag2));

        assertTrue(!moneyBag1.equals(money12CHF));
        assertTrue(!money12CHF.equals(moneyBag1));

        assertEquals(moneyBag1, moneyBag1);
    }

    /*@Test
    public void testMixedSimpleAdd() {
        Money bag[] = { money12CHF, money7USD };
        MoneyBag expected = new MoneyBag(bag);

        assertEquals(expected, money12CHF.add(money7USD));
    }

    @Test
    public void testSimplify() {
        Money expected = new Money(7, "USD");

        assertEquals(expected, moneyBag1.addMoney(new Money(-12, "CHF")));
    }*/
}
