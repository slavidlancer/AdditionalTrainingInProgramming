package com.tutorials.multithreading;

public class TestThread {
	public static void main(String[] args) {
		ThreadDemo threadDemo1 = new ThreadDemo("thread 01");
		threadDemo1.start();
		
		ThreadDemo threadDemo2 = new ThreadDemo("thread 02");
		threadDemo2.start();
	}
}
