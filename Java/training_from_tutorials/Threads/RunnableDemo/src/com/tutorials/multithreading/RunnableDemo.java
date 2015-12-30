package com.tutorials.multithreading;

public class RunnableDemo implements Runnable {
	private Thread t;
	private String threadName;
	   
	RunnableDemo(String name) {
		this.threadName = name;
		
	    System.out.println("Creating " +  this.threadName );
	}
	
	public void run() {
		System.out.println("Running " +  this.threadName );
	    
		try {
			for(int i = 4; i > 0; i--) {
				System.out.println("Thread: " + this.threadName + ", " + i);
	            
	            Thread.sleep(50);
	         }
	    } catch (InterruptedException ie) {
	         System.out.println("Thread " +  this.threadName + " interrupted.");
	    }
		
	    System.out.println("Thread " +  this.threadName + " exiting.");
	}

	public void start() {
		System.out.println("Starting " +  this.threadName );
		
	    if (t == null) {
	    	t = new Thread(this, this.threadName);
	        t.start();
	    }
	}
}
