public class Oi
{
	public static void main (String[] args)
	{
		byte p, v;
		short c = 140;	//10001100
		short d, e, num, i;
		int a = 14735;
		int b = a % 2;
		int number, tempA, tempB, tempC, tempD, n, np, nv, mask, ns;
		double sideA = 5.20;
		double sideB = 2.35;
		double sideH = 12.91;
		double perimeter = (2 * sideA) + (2 * sideB);
		double surface = sideA * sideB;
		double surfaceTrapezium = ((sideA + sideB) / 2) * sideH;
		boolean flag = true;
		java.util.Scanner input = new java.util.Scanner (System.in);

		System.out.println (b == 0 ? "even" : "odd");

		if ((a % 5 == 0) && (a % 7 == 0))
		{
			System.out.println ("a % 5 == 0 && a % 7 == 0");
		}

		if (((a / 100) % 10) == 7)
		{
			System.out.println ("7");
		}

		System.out.println (((c & 8) != 0) ? "1" : "0");
		System.out.printf ("perimeter = %.2f", perimeter);
		System.out.printf (" surface = %.2f\n", surface);
		System.out.printf ("trapezium surface = %.2f\n", surfaceTrapezium);
		System.out.println ("enter number:");

		number = input.nextInt();
		number *= 0.17;

		System.out.println (number);

		System.out.println ("enter d:");
		d = input.nextShort();

		System.out.println ("enter e:");
		e = input.nextShort();

		if ((Math.sqrt ((d * d) + (e * e)) < 5) && ((d < -1) || (d > 5)) && ((e < 1) || (e > 5)))
		{
			System.out.println ("O (" + d + ", " + e + ") is in circle and out of rectangle");
		}
		else if ((Math.sqrt ((d * d) + (e * e)) < 5))
		{
			System.out.println ("O (" + d + ", " + e + ") is in circle and not out of rectangle");
		}
		else
		{
			System.out.println ("O (" + d + ", " + e + ") is not in circle and not out of rectangle");
		}

		System.out.println ("enter num:");
		num = input.nextShort();

		tempA = num / 1000;
		tempB = (num % 1000) / 100;
		tempC = (num % 100) / 10;
		tempD = num % 10;

		System.out.println (tempA + tempB + tempC + tempD);
		System.out.println (tempD + " " + tempC + " " + tempB + " " + tempA);
		System.out.println (tempD + " " + tempA + " " + tempB + " " + tempC);
		System.out.println (tempA + " " + tempC + " " + tempB + " " + tempD);

		System.out.println ("enter n:");
		n = input.nextShort();

		System.out.println ("enter p:");
		p = input.nextByte();

		np = 1 << p;

		if ((n & np) != 0)
		{
			System.out.println ("byte = 1");
		}
		else
		{
			System.out.println ("byte = 0");
		}

		nv = 1;
		nv <<= p;

		do
		{
			System.out.println ("enter v (0/1):");
			v = input.nextByte();
		}
		while ((v < 0) || (v > 1));

		if (v == 1)
		{
			if ((n & nv) != 0)
			{
				System.out.println (n);
			}
			else
			{
				n |= nv;

				System.out.println (n);
			}
		}
		else if (v == 0)
		{
			nv = ~nv;
			n &= nv;

			System.out.println (n);
		}

		do
		{
			System.out.println ("enter n (1-99):");
			ns = input.nextInt();
		}
		while ((ns <= 0) || (ns >= 100));

		for (i = 2; i <= (byte) Math.sqrt (ns); i++)
		{
			if (ns % i == 0)
			{
				flag = false;

				break;
			}
		}

		if (flag)
		{
			System.out.printf ("%d is prime\n", ns);
		}
		else
		{
			System.out.printf ("%d is not prime\n", ns);
		}
	}
}
