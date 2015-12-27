public class Method
{
	public static void printL (String txt)
	{
		System.out.println(txt);
	}

	public static long calc (int ... el)
	{
		long sum=0;
		for(int i:el)
		{
			sum+=i;
		}
		return sum;
	}

	public static void main (String[] args)
	{
		String pr="printing ";
		long sum=calc(2,3,4);
		pr+=sum;
		printL(pr);
	}
}
