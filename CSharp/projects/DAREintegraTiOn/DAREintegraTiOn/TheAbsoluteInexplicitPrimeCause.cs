using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn
{
    public abstract class TheAbsoluteInexplicitPrimeCause : ITheAbsoluteInexplicitPrimeCause
    {
	    protected TheAbsoluteInexplicitPrimeCause()
    	{
    	}

    	public string ExplainTheAbsolute()
    	{
    		return "The Absolute cannot be explained with words. The Relative cannot explain the Absoulte.";
    	}
    }
}
