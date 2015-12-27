package snippets;

public class Lion extends Felidae implements Reproducible {
    private Paw frontLeft = Paw.FRONTLEFT;
    private Paw frontRight = Paw.FRONTRIGHT;
    private Paw backLeft = Paw.BACKLEFT;
    private Paw backRight = Paw.BACKRIGHT;

    public Lion() {}

    public Lion(boolean male, int weight) {
        super(male, weight);
    }

    private void movePaw(Paw paw) {
        System.out.println("moving paw: " + paw);
    }

    private void ambush() {
        System.out.println("ambush");
    }

    @Override
    public void catchPray(Object pray) {
        super.hide();
        this.ambush();
        super.run();

        System.out.println("Lion.catchPray()");
    }

    @Override
    public void walk() {
        this.movePaw(frontLeft);
        this.movePaw(frontRight);
        this.movePaw(backLeft);
        this.movePaw(backRight);
    }

    @Override
    public Mammal[] reproduce(Mammal anotherLion) {
        return new Mammal[] {new Mammal(), new Mammal()};
    }

    @Override
    protected String getTypicalSound() {
        return "grrrr";
    }

    @Override
    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }
}
