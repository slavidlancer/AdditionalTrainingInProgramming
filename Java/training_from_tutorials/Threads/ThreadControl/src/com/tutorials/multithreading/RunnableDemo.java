package com.tutorials.multithreading;

public class RunnableDemo implements Runnable {
	public Thread t;
	private String threadName;
	boolean suspend = false;
	
	public RunnableDemo(String threadName) {
		this.threadName = threadName;
		
		System.out.println("Creating " + threadName );
	}

	@Override
	public void run() {
		System.out.println("Running " +  threadName );
		
		try {
			for (int i = 10; i > 0; i--) {
				System.out.println("Thread: " + threadName + ", " + i);
				
				Thread.sleep(300);
				
				synchronized (this) {
					while(this.suspend) {
						wait();
					}
				}
			}
		} catch (InterruptedException ie) {
			System.out.println("Thread " + threadName + " interrupted.");
		}
	}
	
	public void start() {
		System.out.println("Starting " + threadName );
	    
		if (t == null) {
			t = new Thread (this, threadName);
			t.start ();
	    }
	}
	
	public void suspend() {
		this.suspend = true;
	}
	
	public synchronized void resume() {
		this.suspend = false;
		
		notify();
	}
}
