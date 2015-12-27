using DAREintegraTiOn.Interfaces.Core;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Interfaces.Core.Laws
{
    public interface IMajorLaw : ILaw
    {
        string VulgarTitle { get; set; } //get;

        string ArchetypeMeaning { get; set; } //get;

        string HumanityMeaning { get; set; } //get;

        string NatureMeaning { get; set; } //get;

        string LawDescription { get; set; } //get;

        string ShortDescription { get; set; } //get;

        string AstrologicalSign { get; set; } //get;

        bool HasPlanetRelation { get; set; } //get;

        bool HasZodiacusRelation { get; set; } //get;

        StringBuilder TarotCardDescription { get; }

        IDictionary<string, char> Letters { get; }
    }
}
