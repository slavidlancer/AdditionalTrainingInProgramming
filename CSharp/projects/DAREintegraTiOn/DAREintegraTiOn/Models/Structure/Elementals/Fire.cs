using DAREintegraTiOn.Interfaces;
using System.Text;

namespace DAREintegraTiOn.Models.Structure.Elementals
{
    public sealed class Fire : ElementalObject, IFire
    {
        public Fire(string name, int age, ColorType color, SizesMeasures sizes, byte personalNumber,
            char symbol, bool isReal, string staticMeaning, string dynamicMeaning, string virtue)
            : base(name, age, color, sizes, personalNumber, symbol, isReal, staticMeaning, dynamicMeaning, virtue)
        {
        }

	    public override string ToString()
	    {
            var fireAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return fireAllInfo.ToString();
	    }
    }
}
