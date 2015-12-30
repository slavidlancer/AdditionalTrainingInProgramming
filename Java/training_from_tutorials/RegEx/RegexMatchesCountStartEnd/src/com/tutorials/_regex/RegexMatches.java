package com.tutorials._regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {
	private static final String REGEX = "\\bcat\\b";
	private static final String INPUT = "cat cat cat cattie cat";
	
	public static void main(String[] args) {
		Pattern pattern = Pattern.compile(REGEX);
		Matcher matcher = pattern.matcher(INPUT);
		int count = 0;
		
		while (matcher.find()) {
			count++;
			
			System.out.println("Match number " + count);
			System.out.println("start() " + matcher.start());
			System.out.println("end() " + matcher.end());
		}
	}
}
