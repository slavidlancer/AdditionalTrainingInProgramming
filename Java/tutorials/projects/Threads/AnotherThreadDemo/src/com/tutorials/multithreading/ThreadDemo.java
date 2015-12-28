package com.tutorials.multithreading;

public class ThreadDemo extends Thread {
	private Thread t;
	private String threadName;
	
	public ThreadDemo(String name) {
		this.threadName = name;
		
		System.out.println("creating " + this.threadName);
	}
	
	public void run() {
		System.out.println("running " + this.threadName);
		
		try {
			for (int i = 4; i > 0; i--) {
				System.out.println(this.threadName + ", " + i);
				
				Thread.sleep(50);
			}
		} catch (InterruptedException ie) {
			System.out.println(this.threadName + "is interrupted");
		}
		
		System.out.println("exit on " + this.threadName);
	}
	
	public void start() {
		System.out.println("starting " + this.threadName);
		
		if (t == null) {
			t = new Thread(this, threadName);
			t.start();
		}
	}
}
