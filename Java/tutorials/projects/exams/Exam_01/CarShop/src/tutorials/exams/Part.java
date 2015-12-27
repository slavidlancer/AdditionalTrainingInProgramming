package tutorials.exams;

import java.util.HashSet;

public class Part {
    private String name;
    private String code;
    private PartCategory category;
    private HashSet<Car> supportedCars;
    private double buyPrice;
    private double sellPrice;
    private Manufacturer manufacturer;

    public Part(String name, double buyPrice, double sellPrice,
                Manufacturer manufacturer, String code, PartCategory category) {
        this.name = name;
        this.buyPrice = buyPrice;
        this.sellPrice = sellPrice;
        this.manufacturer = manufacturer;
        this.code = code;
        this.category = category;
        this.supportedCars = new HashSet<Car>();
    }

    public void аddSupportedCar(Car car) {
        this.supportedCars.add(car);
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();

        result.append("Part: " + this.name + "\n");
        result.append("-code: " + this.code + "\n");
        result.append("-category: " + this.category + "\n");
        result.append("-buyPrice: " + this.buyPrice + "\n");
        result.append("-sellPrice: " + this.sellPrice + "\n");
        result.append("-manufacturer: " + this.manufacturer +"\n");
        result.append("---Supported cars---" + "\n");

        for (Car car : this.supportedCars) {
            result.append(car);
            result.append("\n");
        }

        result.append("----------------------\n");

        return result.toString();
    }
}
