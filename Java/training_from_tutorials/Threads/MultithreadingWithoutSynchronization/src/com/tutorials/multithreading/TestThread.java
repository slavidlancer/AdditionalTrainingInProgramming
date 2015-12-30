package com.tutorials.multithreading;

public class TestThread {
	public static void main(String[] args) {
		PrintDemo printDemo = new PrintDemo();
		ThreadDemo threadDemo1 = new ThreadDemo("thread 01", printDemo);
		ThreadDemo threadDemo2 = new ThreadDemo("thread 02", printDemo);
		
		threadDemo1.start();
		threadDemo2.start();
		
		try {
			threadDemo1.join();
			threadDemo2.join();
		} catch (Exception e) {
			System.out.println("Interrupted");
		}
	}
}
