public class CatalogApplication {
	public static void main(String[] args) {
		String catalog =
				"MicrowaveOven: 170, \n" +
				"AudioSystem: 125, \n" +
				"TV: 315, \n" +
				"Refrigerator: 400";
		System.out.println(catalog);
		/* MicrowaveOven: 170,
		AudioSystem: 125,
		TV: 315,
		Refrigerator: 400 */
		String[] products = catalog.split("[\\d\\s,:]+");

		for(String product : products) {
			System.out.print(product + " ");
		}
		// MicrowaveOven AudioSystem TV Refrigerator
		System.out.println();
		String[] prices = catalog.split("\\D+");

		for(String price : prices) {
			System.out.print(price + " ");
		}
		// Result: 170 125 315 400
	}
}
