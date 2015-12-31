package com.tutorials.exam.preparation;

import java.util.Scanner;

public class FireTheArrows {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);

		int n = Integer.parseInt(scan.nextLine());
		boolean hasMoved = true;

		char[][] matrix = new char[n][];

		for (int i = 0; i < n; i++) {
		    matrix[i] = scan.nextLine().toCharArray();
		}

		while (hasMoved) {
		    hasMoved = false;
		    for (int i = 0; i < matrix.length; i++) {
		        for (int j = 0; j < matrix[i].length; j++) {
		            if (matrix[i][j] == '>') {
		                if (j + 1 <= matrix[i].length - 1 &&
		                        matrix[i][j + 1] == 'o') {
		                    matrix[i][j] = 'o';
		                    matrix[i][j + 1] = '>';
		                    hasMoved = true;
		                }
		            } else if (matrix[i][j] == '<') {
		                if (j - 1 >= 0 &&
		                        matrix[i][j - 1] == 'o') {
		                    matrix[i][j] = 'o';
		                    matrix[i][j - 1] = '<';
		                    hasMoved = true;
		                }
		            } else if (matrix[i][j] == '^') {
		                if (i - 1 >= 0 &&
		                        matrix[i - 1][j] == 'o') {
		                    matrix[i][j] = 'o';
		                    matrix[i - 1][j] = '^';
		                    hasMoved = true;
		                }
		            } else if (matrix[i][j] == 'v') {
		                if (i + 1 <= matrix.length - 1 &&
		                        matrix[i + 1][j] == 'o') {
		                    matrix[i][j] = 'o';
		                    matrix[i + 1][j] = 'v';
		                    hasMoved = true;
		                }
		            }
		        }
		    }
		}

		for (char[] chars : matrix) {
		    for (char aChar : chars) {
		        System.out.print(aChar);
		    }
		    System.out.println();
		}
		
		scan.close();
	}
}
