using DAREintegraTiOn.Models;

namespace DAREintegraTiOn.Interfaces.Models
{
    public interface ICreature : IWorld
    {
	    string Name { get; set; } //{ get; }

        int Age { get; set; }

        ColorType Color { get; set; }

        SizesMeasures Sizes { get; set; }

        byte PersonalNumber { get; set; }

        char Symbol { get; set; }

        string SymbolFigure { get; set; }

        bool IsReal { get; set; }

        //StringBuilder OptionalDescription { get; set; }
    }
}
