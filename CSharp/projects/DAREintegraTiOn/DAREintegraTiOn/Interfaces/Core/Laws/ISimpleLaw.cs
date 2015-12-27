using DAREintegraTiOn.Interfaces.Core;

namespace DAREintegraTiOn.Interfaces.Core.Laws
{
    public interface ISimpleLaw : ILaw
    {
        string AdditionalDescription { get; set; }
    }
}
