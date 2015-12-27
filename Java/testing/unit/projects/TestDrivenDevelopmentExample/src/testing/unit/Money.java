package testing.unit;

public class Money implements IMoney {
    private int amount;
    private String currency;

    public Money(int amount, String currency) {
        this.amount = amount;
        this.currency = currency;
    }

    public int getAmount() {
        return this.amount;
    }

    public String getCurrency() {
        return this.currency;
    }

    @Override
    public Money add(Money someMoney) {
        if (someMoney.getCurrency().equals(this.getCurrency())) {
            return new Money(this.getAmount() + someMoney.getAmount(),
                    getCurrency());
        }

        return null;
    }

    /*@Override
    public IMoney addMoney(Money someMoney) {
        if (someMoney.getCurrency().equals(this.getCurrency())) {
            return new Money(this.getAmount() + someMoney.getAmount(),
                    getCurrency());
        }

        return new MoneyBag(this, someMoney);
    }

    @Override
    public IMoney addMoneyBag(MoneyBag someMoneyBag) {
        return someMoneyBag.addMoney(this);
    }*/

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Money) {
            Money newMoney = (Money) obj;

            return newMoney.getCurrency().equals(this.getCurrency()) &&
                    this.getAmount() == newMoney.getAmount();
        }

        return false;
    }
}
