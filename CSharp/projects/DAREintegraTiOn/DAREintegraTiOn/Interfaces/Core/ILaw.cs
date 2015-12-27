namespace DAREintegraTiOn.Interfaces.Core
{
    public interface ILaw : ICreator
    {
        string Title { get; set; } //get;

        byte Number { get; set; } //get;

        string Figure { get; set; } //get;

        char Symbol { get; set; } //get;
    }
}
