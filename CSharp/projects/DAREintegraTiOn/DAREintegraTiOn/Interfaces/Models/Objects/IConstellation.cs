using DAREintegraTiOn.Models.Objects;

namespace DAREintegraTiOn.Interfaces.Models.Objects
{
    public interface IConstellation : IStarObject
    {
	    IStar BrightestStar { get; set; } //private set;

	    Zodiacus ZodiacSign { get; set; } //private set;
    }
}
