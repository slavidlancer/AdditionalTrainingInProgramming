public class conread
{
	public static void main (String[] args)
	throws java.io.IOException
	{
		int ch;
		System.out.print("Enter number: ");
		while ((ch=System.in.read())!='\n')
		{
			System.out.print((char) ch);
		}
		System.out.print("\nEnter text: ");
		java.util.Scanner input=new java.util.Scanner(System.in);
		String name=input.nextLine();
		System.out.println(name);
//		java.io.Bufferedreader bf=new java.io.Bufferedreader(new java.io.InputStreamReader(System.in));
//		String nam=bf.readLine();
//		System.out.println(nam);
	}
}
