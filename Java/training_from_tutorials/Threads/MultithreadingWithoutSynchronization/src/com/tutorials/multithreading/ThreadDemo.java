package com.tutorials.multithreading;

public class ThreadDemo extends Thread {
	private Thread t;
	private String threadName;
	PrintDemo printDemo;
	
	public ThreadDemo(String threadName, PrintDemo printDemo) {
		this.threadName = threadName;
		this.printDemo = printDemo;
	}

	@Override
	public void start() {
		System.out.println("Starting " +  threadName );
		
		if (t == null) {
			t = new Thread(this, threadName);
			t.start();
		}
	}

	@Override
	public void run() {
		printDemo.printCount();
		
		System.out.println("Thread " +  threadName + " exiting.");
	}
}
