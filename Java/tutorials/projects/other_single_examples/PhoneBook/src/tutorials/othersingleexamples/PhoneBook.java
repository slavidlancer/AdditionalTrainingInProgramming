package tutorials.othersingleexamples;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;

public class PhoneBook {
    public static void main(String[] args) throws FileNotFoundException {
        TreeMap<String, TreeMap<String, String>> phonesByTown =
                new TreeMap<String, TreeMap<String, String>>();
        Scanner input = new Scanner(new File("out/production/PhoneBook/" +
                "tutorials/othersingleexamples/phonebook.txt"), "windows-1251");

        try {
            while (input.hasNext()) {
                String line = input.nextLine();
                String[] phoneBookEntry = line.split("\\s*\\|\\s*");
                String name = phoneBookEntry[0];
                String town = phoneBookEntry[1];
                String phone = phoneBookEntry[2];
                TreeMap<String, String> phoneBook = phonesByTown.get(town);

                if (phoneBook == null) {
                    phoneBook = new TreeMap<String, String>();
                    phonesByTown.put(town, phoneBook);
                }

                phoneBook.put(name, phone);
            }
        } finally {
            input.close();
        }

        Set<String> towns = phonesByTown.keySet();

        for (String town : towns) {
            System.out.println("Town " + town + ":");
            TreeMap<String, String> phoneBook = phonesByTown.get(town);

            for (Map.Entry<String, String> entry : phoneBook.entrySet()) {
                String name = entry.getKey();
                String phone = entry.getValue();
                System.out.printf("\t%s - %s\n", name, phone);
            }
        }
    }
}
