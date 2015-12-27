using DAREintegraTiOn.Interfaces.Core;

namespace DAREintegraTiOn.Interfaces.Core.Laws
{
    public interface IMinorLaw : ILaw
    {
        string Meaning { get; set; }

        string[] OtherNames { get; set; }
    }
}
