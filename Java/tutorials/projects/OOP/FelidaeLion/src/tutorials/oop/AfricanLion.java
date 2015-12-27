package tutorials.oop;

public class AfricanLion extends Lion {
    public AfricanLion(boolean male, int weight) {
        super(male, weight);
    }

    @Override
    public String toString() {
        return String.format("(AfricanLion{male: %s, weight: %s}",
                this.isMale(), this.getWeight());
    }
}
