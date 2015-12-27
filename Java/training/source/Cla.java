import Pack.Obj;
import java.lang.NullPointerException;
import java.lang.Throwable.*;
import java.lang.*;

public class Cla
{
	public static void main (String[] args)
	{
		try
		{
			Obj obekt=new Obj();
			Obj obektEn=new Obj("Name","Type");
			obekt.doObj();
			obektEn.doObj();
			obekt=null;
			obektEn.name="Nomer";
			obektEn.doObj();
			obekt.doObj();
		}
		catch (NullPointerException exc)
		{
			System.out.println("The object was nulled:");
			exc.printStackTrace();
		}
	}
}
