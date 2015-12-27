using DAREintegraTiOn.Core.Laws;
using DAREintegraTiOn.Interfaces;
using DAREintegraTiOn.Interfaces.Core.Laws;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects
{
    public class Universe : World, IUniverse
    {
        private readonly IList<IMajorLaw> majorLaws;
        private readonly IList<IPhysicalLaw> physicalLaws;
        private readonly IList<IGalaxy> galaxies;

        public Universe()
            : base()
        {
            this.majorLaws = new List<IMajorLaw>();
            this.physicalLaws = new List<IPhysicalLaw>();
            this.galaxies = new List<IGalaxy>();
        }

	    public override string ToString()
	    {
            var universeAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return universeAllInfo.ToString();
	    }
    }
}
