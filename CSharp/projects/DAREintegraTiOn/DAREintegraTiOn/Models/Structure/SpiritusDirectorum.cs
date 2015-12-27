using DAREintegraTiOn.Interfaces.Models.Structure;
using System.Text;

namespace DAREintegraTiOn.Models.Structure
{
    public sealed class SpiritusDirectorum : SpiritusDirectorumObject, ISpiritusDirectorum
    {
        public SpiritusDirectorum(string name, int age, ColorType color, SizesMeasures sizes,
            byte personalNumber, char symbol, bool isReal)
            : base(name, age, color, sizes, personalNumber, symbol, isReal)
        {
        }

	    public override string ToString()
	    {
            var spiritusDirectorumAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return spiritusDirectorumAllInfo.ToString();
	    }
    }
}
