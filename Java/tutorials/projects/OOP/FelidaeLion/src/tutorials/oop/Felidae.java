package tutorials.oop;

public class Felidae {
    private boolean male;

    public Felidae() {
        this(true);
    }

    public Felidae(boolean male) {
        this.male = male;
    }

    public boolean isMale() {
        return male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }
}
