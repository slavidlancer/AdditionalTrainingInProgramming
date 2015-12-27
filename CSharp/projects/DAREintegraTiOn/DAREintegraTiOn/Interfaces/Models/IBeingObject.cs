using DAREintegraTiOn.Models;

namespace DAREintegraTiOn.Interfaces.Models
{
    public interface IBeingObject : ICreature, IPhantom
    {
        GenderType Gender { get; set; } //private set
    }
}
