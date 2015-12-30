package snippets;

public abstract class Felidae extends Animal {
    private boolean male;
    private int weight;

    public Felidae() {}

    public Felidae(boolean male, int weight) {
        this.male = male;
        this.weight = weight;
    }

    public boolean isMale() {
        return this.male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }

    public int getWeight() {
        return this.weight;
    }

    public void run() {
        System.out.println("running");
    }

    public void hide() {
        System.out.println("hiding");
    }

    public abstract void catchPray(Object pray);
    public abstract void walk();
}
