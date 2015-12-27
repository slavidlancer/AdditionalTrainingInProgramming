public class Uk
{
	public static void main (String[] args)
	{
		int a = 5;
		int b = a * a;
		int temp;

		System.out.println (a + " " + b);

		if (a > b)
		{
			temp = a;
			a = b;
			b = temp;
		}
		else if (b > a)
		{
			temp = b;
			b = a;
			a = temp;
		}

		System.out.println (a + " " + b);
	}
}
