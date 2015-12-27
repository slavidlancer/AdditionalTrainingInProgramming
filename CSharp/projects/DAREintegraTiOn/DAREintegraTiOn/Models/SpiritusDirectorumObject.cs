using DAREintegraTiOn.Interfaces.Models;

namespace DAREintegraTiOn.Models
{
    public abstract class SpiritusDirectorumObject : Creature, ISpiritusDirectorumObject
    {
        protected SpiritusDirectorumObject(string name, int age, ColorType color, SizesMeasures sizes,
            byte personalNumber, char symbol, bool isReal)
            : base(name, age, color, sizes, personalNumber, symbol, isReal)
        {
        }
    }
}
