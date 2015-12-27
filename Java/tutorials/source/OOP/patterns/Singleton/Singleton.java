package introjavabook;
public class Singleton {
	// Single instance
	private static Singleton instance;

	// Initialize the single instance
	static {
		instance = new Singleton();
	}

	// The method for taking the single instance
	public static Singleton getInstance() {
		return instance;
	}

	// Private constructor – protects direct instantialion
	private Singleton() {}
}
