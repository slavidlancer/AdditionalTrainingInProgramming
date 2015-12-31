package com.tutorials.exam.preparation;

import java.util.ArrayList;
import java.util.Scanner;

public class ValidUsernames {
    public static void main(String[] args) {
        Scanner scanInput = new Scanner(System.in);
        
        String input = scanInput.nextLine();
        
        String[] words = input.split("[ \\\\/()]+");
        
        String username = "[a-zA-Z]\\w{2,24}";
        
        ArrayList<String> validUsernames = new ArrayList<>();
        
        for (String word : words) {
            if (word.matches(username)) {
                validUsernames.add(word);
            }
        }
        
        int maxLength = 0;
        String first = "";
        String second = "";
        
        for (int i = 0; i < validUsernames.size() - 1; i++) {
            if (validUsernames.get(i).length() + validUsernames.get(i + 1).
                    length() > maxLength) {
                maxLength = validUsernames.get(i).length() +
                        validUsernames.get(i + 1).length();
                first = validUsernames.get(i);
                second = validUsernames.get(i + 1);
            }
        }
        
        System.out.println(first);
        System.out.println(second);
        
        scanInput.close();
    }
}
