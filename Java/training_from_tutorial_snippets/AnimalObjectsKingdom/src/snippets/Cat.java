package snippets;

public class Cat extends Animal {
    private Breed breedName;

    public Breed getBreedName() {
        return this.breedName;
    }

    public void setBreedName(Breed breedName) {
        this.breedName = breedName;
    }

    @Override
    protected String getTypicalSound() {
        return "miaow";
    }
}
