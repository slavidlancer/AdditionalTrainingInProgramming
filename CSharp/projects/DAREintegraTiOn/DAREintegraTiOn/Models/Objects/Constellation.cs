using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects
{
    public class Constellation : StarObject, IConstellation
    {
	    private IStar brightestStar;
	    private Zodiacus zodiacSign;
        private readonly IList<IStar> stars;

        public Constellation(string name, int age, ColorType color, SizesMeasures sizes,
            byte personalNumber, char symbol, bool isReal, IStar brightestStar, int energyCapacity,
            Zodiacus zodiacSign = 0)
            : base(name, age, color, sizes, personalNumber, symbol, isReal, energyCapacity)
        {
	        this.BrightestStar = brightestStar;
		    this.ZodiacSign = zodiacSign;
            this.stars = new List<IStar>();
        }

	    public IStar BrightestStar
	    {
		    get
		    {
			    return this.brightestStar;
		    }

		    set
		    {
			    ValidateStar(value);

			    this.brightestStar = value;
		    }
	    }

	    public Zodiacus ZodiacSign
	    {
		    get
		    {
			    return this.zodiacSign;
		    }

		    set
		    {
			    ValidateZodiac(value);

			    this.zodiacSign = value;
		    }
	    }

	    public static void ValidateStar(IStar brightestStar)
	    {
		    Validator.CheckIfNull(brightestStar, string.Format(Global.ErrorMessages.ObjectCannotBeNull, "Star"));
	    }

	    public static void ValidateZodiac(Zodiacus zodiacSign)
	    {
		    Validator.CheckIfNull(zodiacSign, string.Format(Global.ErrorMessages.ObjectCannotBeNull, "Zodiac"));
	    }

	    public override string ToString()
	    {
		    var constellationAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return constellationAllInfo.ToString();
	    }
    }
}
