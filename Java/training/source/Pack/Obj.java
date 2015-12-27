package Pack;

public class Obj
{
	public String name;
	public String type;
	private static int n = 0x2000;

	public String getName()
	{
		return this.name;
	}

	public String getType()
	{
		return this.type;
	}

	public void setName (String nam)
	{
		this.name = nam;
	}

	public void setType (String typ)
	{
		this.type = typ;
	}

	public Obj()
	{
		this.name = "Ime";
		this.type = "tip";
	}

	public Obj (String na, String ty)
	{
		this.name = na;
		this.type = ty;
	}

	public void doObj()
	{
		System.out.println ("doObj(): " + this.name + "," + this.type + ". " + n + ".");
	}
}
