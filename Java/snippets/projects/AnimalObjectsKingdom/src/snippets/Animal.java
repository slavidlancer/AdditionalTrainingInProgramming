package snippets;

public abstract class Animal {
    public void printInformation() {
        System.out.println(this.getClass().getSimpleName());
        System.out.println(this.getTypicalSound());
    }

    protected abstract String getTypicalSound();
}
