package training;

import training.pack.*;

public class ClassObjectPackage {
    public static void main(String[] args) {
        try {
            Product productInstance = new Product();
            Product checkProduct = new Product("firstName", 666);

            System.out.println(productInstance);
            System.out.println(checkProduct);

            System.out.println("result from first calculation: " +
                    productInstance.calculateProduct(666, 3));
            System.out.println("result from second calculation: " +
                    checkProduct.calculateProduct(22, 666));

            productInstance = null;
            checkProduct.setFirstName("");

            System.out.println(productInstance);
            System.out.println(checkProduct);

            System.out.println("result from first calculation: " +
                    productInstance.calculateProduct(123456789, 2));
            System.out.println("result from second calculation: " +
                    checkProduct.calculateProduct(56, 22));
        } catch (NullPointerException ex) {
            System.err.println("The object was nulled:");
            ex.printStackTrace();
        }
    }
}
