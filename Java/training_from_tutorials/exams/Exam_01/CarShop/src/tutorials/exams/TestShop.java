package tutorials.exams;

public class TestShop {
    public static void main(String[] args) {
        Manufacturer manufacturer01 = new Manufacturer("BWM",
                "Germany", "Bavaria", "665544", "876666");
        Manufacturer manufacturer02 = new Manufacturer("Lada",
                "Russia", "Moscow", "653443", "893321");

        Car car01 = new Car("BMW", "316i", "1994");
        Car car02 = new Car("Lada", "Samara", "1987");
        Car car03 = new Car("Mazda", "MX5", "1999");
        Car car04 = new Car("Mercedes", "C500", "2008");
        Car car05 = new Car("Trabant", "super", "1966");
        Car car06 = new Car("Opel", "Astra", "1997");

        Part cheapPart = new Part("Tires 165/50/13", 302.36,
                345.58, manufacturer02, "T332", PartCategory.TIRES);
        cheapPart.аddSupportedCar(car01);
        cheapPart.аddSupportedCar(car02);

        Part expensivePart = new Part("BMW Engine Oil",
                633.17, 670.0, manufacturer01, "Oil431", PartCategory.ENGINE);
        expensivePart.аddSupportedCar(car03);
        expensivePart.аddSupportedCar(car04);
        expensivePart.аddSupportedCar(car05);
        expensivePart.аddSupportedCar(car06);

        Shop newShop = new Shop("Tunning shop");
        newShop.addPart(cheapPart);
        newShop.addPart(expensivePart);

        System.out.println(newShop);
    }
}
