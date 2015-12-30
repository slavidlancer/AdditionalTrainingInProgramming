package training.pack;

public class Product extends Template {
    private int number;

    public Product() {
        this.firstName = "name";
        this.number = NUMBER;
    }

    public Product(String firstName, int number) {
        this.firstName = firstName;
        this.number = number;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public int getNumber() {
        return this.number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public long calculateProduct(int firstValue, int secondValue) {
        long result = firstValue * secondValue;

        return result;
    }

    @Override
    public String toString() {
        return "Product {" +
                "name = " + firstName +
                "; number = " + number +
                '}';
    }
}
