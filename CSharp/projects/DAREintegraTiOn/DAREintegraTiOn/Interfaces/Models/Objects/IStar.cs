namespace DAREintegraTiOn.Interfaces.Models.Objects
{
    public interface IStar : IStarObject
    {
        double Brightness { get; set; }

        string ShortDescription { get; set; }
    }
}
