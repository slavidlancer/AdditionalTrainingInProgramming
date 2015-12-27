using DAREintegraTiOn.Interfaces;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects.Beings
{
    public class Mineral : BeingObject, IMineral
    {
        private readonly IList<IElementalObject> elementals;

        public Mineral(string name, int age, ColorType color, SizesMeasures sizes, byte personalNumber, char symbol,
            bool isReal, GenderType gender, string type, string breed)
            : base(name, age, color, sizes, personalNumber, symbol, isReal, gender, type, breed)
        {
            this.elementals = new List<IElementalObject>();
        }

	    public override string ToString()
    	{
            var mineralAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return mineralAllInfo.ToString();
	    }
    }
}
