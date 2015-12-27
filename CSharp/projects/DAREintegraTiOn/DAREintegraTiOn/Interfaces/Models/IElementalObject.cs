namespace DAREintegraTiOn.Interfaces.Models
{
    public interface IElementalObject : ICreature
    {
        string StaticMeaning { get; set; }

        string DynamicMeaning { get; set; }

        string Virtue { get; set; }
    }
}
