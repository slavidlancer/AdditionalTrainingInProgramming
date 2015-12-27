package snippets;

public class AfricanLion extends Lion {
    public AfricanLion() {}

    public AfricanLion(boolean male, int weight) {
        super(male, weight);
    }

    public void catchPray(Object pray) {
        System.out.println("AfricanLion.catchPray()");
        System.out.println("calling super.catchPray(pray)");

        super.catchPray(pray);
    }

    @Override
    public String toString() {
        return String.format("(AfricanLion, male: %s, weight: %s)",
                this.isMale(), this.getWeight());
    }
}
