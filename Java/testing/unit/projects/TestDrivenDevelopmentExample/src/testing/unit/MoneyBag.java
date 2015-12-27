package testing.unit;

import java.util.Vector;

public class MoneyBag { //implements IMoney
    private Vector Monies = new Vector();

    public MoneyBag(Money money1, Money money2) {
        /*appendMoney(money1);
        appendMoney(money2);*/
        this.Monies.add(money1);
        this.Monies.add(money2);
    }

    /*public MoneyBag(Money bag[]) {
        int length = bag.length;

        for (int i = 0; i < length; i++) {
            this.Monies.add(bag[i]);
        }
    }*/

    /*@Override
    public IMoney addMoney(Money someMoney) {
        return (new MoneyBag(someMoney, this)).simplify();
    }

    @Override
    public IMoney addMoneyBag(MoneyBag someMoneyBag) {
        return (new MoneyBag(someMoneyBag, this)).simplify();
    }*/

    /*private IMoney simplify() {
        if (this.Monies.size() == 1) {
            return (IMoney) this.Monies.firstElement();
        }

        return this;
    }*/
}
