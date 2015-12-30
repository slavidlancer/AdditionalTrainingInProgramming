package tutorials.exams;

public class Car {
    private String brand;
    private String model;
    private String productionYear;

    public Car(String brand, String model, String productionYear){
        this.brand = brand;
        this.model = model;
        this.productionYear = productionYear;
    }

    @Override
    public String toString() {
        return "<" + this.brand + "," + this.model + "," +
                this.productionYear + ">";
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;

        result = prime * result + ((brand == null) ? 0 :
                brand.hashCode());
        result = prime * result + ((model == null) ? 0 :
                model.hashCode());
        result = prime * result + ((productionYear == null) ? 0 :
                productionYear.hashCode());

        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (obj == null) {
            return false;
        }

        if (getClass() != obj.getClass()) {
            return false;
        }

        Car other = (Car) obj;

        if (brand == null) {
            if (other.brand != null) {
                return false;
            }
        } else if (!brand.equals(other.brand)) {
            return false;
        }

        if (model == null) {
            if (other.model != null) {
                return false;
            }
        } else if (!model.equals(other.model)) {
            return false;
        }

        if (productionYear == null) {
            if (other.productionYear != null) {
                return false;
            }
        } else if (!productionYear.equals(other.productionYear)) {
            return false;
        }

        return true;
    }
}
