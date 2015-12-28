package com.tutorials._regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {
	private static String REGEX = "a*b";
	private static String INPUT = "aabfooaabfooabfoob";
	private static String REPLACE = "-";
	
	public static void main(String[] args) {
		Pattern pattern = Pattern.compile(REGEX);
		Matcher matcher = pattern.matcher(INPUT);
		StringBuffer sBuffer = new StringBuffer();
		
		while (matcher.find()) {
			matcher.appendReplacement(sBuffer, REPLACE);
		}
		
		matcher.appendTail(sBuffer);
		
		System.out.println(sBuffer.toString());
	}
}
