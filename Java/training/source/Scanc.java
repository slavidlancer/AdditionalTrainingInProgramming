import java.util.Scanner;

public class Scanc
{
	public static String sca ()
	{
		Scanner sc=new Scanner(System.in);
		String temp=sc.nextLine();
		sc.close();
		return temp;
	}

	public static void main (String[] args)
	{
		String getRes=new String();
		getRes=sca();
		System.out.println(getRes);
	}
}
