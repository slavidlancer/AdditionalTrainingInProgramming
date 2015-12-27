package tutorials.othersingleexamples;

public class CatalogApplication {
    public static void main(String[] args) {
        String catalog = "MicrowaveOven: 170, \n" + "AudioSystem: 125, \n" +
                "TV: 315, \n" + "Refrigerator: 400";
        System.out.println(catalog);

        String[] products = catalog.split("[\\d\\s,:]+");

        for(String product : products) {
            System.out.print(product + " ");
        }

        System.out.println();

        String[] prices = catalog.split("\\D+");

        for(String price : prices) {
            System.out.print(price + " ");
        }
    }
}
