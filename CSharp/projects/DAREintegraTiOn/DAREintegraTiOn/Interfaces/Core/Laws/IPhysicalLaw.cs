using DAREintegraTiOn.Interfaces.Core;

namespace DAREintegraTiOn.Interfaces.Core.Laws
{
    public interface IPhysicalLaw : ILaw
    {
        string Description { get; set; }
    }
}
