package com.tutorials.exam.preparation;

import java.util.Scanner;

public class Enigma {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);

		int number = Integer.parseInt(scan.nextLine());
		int match;
		for (int i = 0; i < number; i++) {
		    String lines = scan.nextLine();
		    match = lines.replaceAll("[\\s\\d]+", "").length() / 2;

		    for (int j = 0; j < lines.length(); j++) {
		        char currentChar = lines.charAt(j);

		        if((currentChar >= '0' && currentChar <= '9')
		        		|| currentChar == ' ') {
		            System.out.print(currentChar);
		            
		            continue;
		        }

		        char current = (char)(currentChar + match);
		        
		        System.out.print(current);
		    }
		    
		    System.out.println();
		}
		
		scan.close();
	}
}
