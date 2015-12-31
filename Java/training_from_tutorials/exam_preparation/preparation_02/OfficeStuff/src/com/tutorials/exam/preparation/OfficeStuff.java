package com.tutorials.exam.preparation;

import java.util.Scanner;
import java.util.TreeMap;
import java.util.LinkedHashMap;

public class OfficeStuff {
    public static void main(String[] args) {
        Scanner scanCompanyAndProductPlusAmount = new Scanner(System.in);
        TreeMap<String, LinkedHashMap<String, Integer>> output =
                new TreeMap<>();
        int n = Integer.parseInt(scanCompanyAndProductPlusAmount.nextLine());
        
        for (int i = 0; i < n; i++){
            String[] input = scanCompanyAndProductPlusAmount.nextLine().
                    split(" - ");
            String company = input[0]; //.substring(0, input[0].length());
            int amount = Integer.parseInt(input[1]);
            String product = input[2]; //.substring(0, input[2].length());
            
            if (!output.containsKey(company)){
                output.put(company, new LinkedHashMap<String, Integer>());
            }
            
            if (!output.get(company).containsKey(product)) {
                output.get(company).put(product, amount);
            } else {
                int currentAmount = output.get(company).get(product);
                currentAmount += amount;
                output.get(company).put(product, currentAmount);
            }
        }
        
        for(String comp : output.keySet()){
            System.out.println(comp + "." + output.get(comp).toString().
                    replace("{","").replace("}","").replace("="," = "));
        }
        
        scanCompanyAndProductPlusAmount.close();
    }
}
