package com.tutorials.multithreading;

public class TestThread {
	public static void main(String[] args) {
		RunnableDemo runnableDemo1 = new RunnableDemo("thread 01");
		runnableDemo1.start();
		
		RunnableDemo runnableDemo2 = new RunnableDemo("thread 02");
		runnableDemo2.start();
	}
}
