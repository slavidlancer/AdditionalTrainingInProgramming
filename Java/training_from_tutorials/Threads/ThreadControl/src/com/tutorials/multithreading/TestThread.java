package com.tutorials.multithreading;

public class TestThread {
	public static void main(String[] args) {
		RunnableDemo runnableDemo1 = new RunnableDemo("thread 01");
		runnableDemo1.start();
		RunnableDemo runnableDemo2 = new RunnableDemo("thread 02");
		runnableDemo2.start();
		
		try {
			Thread.sleep(1000);
			runnableDemo1.suspend();
			System.out.println("Suspending First Thread");
			
			Thread.sleep(1000);
			runnableDemo1.resume();
			System.out.println("Resuming First Thread");
			
			Thread.sleep(100);
			runnableDemo2.suspend();
			System.out.println("Suspending Second Thread");
			
			Thread.sleep(1000);
			runnableDemo2.resume();
			System.out.println("Resuming Second Thread");
		} catch (InterruptedException ie) {
			System.out.println("Main thread Interrupted");
		}
		
		try {
			System.out.println("Waiting for threads to finish.");
			
			runnableDemo1.t.join();
			runnableDemo2.t.join();
		} catch (InterruptedException ie) {
			System.out.println("Main thread Interrupted");
		}
		
		System.out.println("Main thread exiting.");
	}
}
