using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects
{
    public class SolarSystem : World, ISolarSystem
    {
        private const int MinNameLength = 2;
        private const int MaxNameLength = 22;

        private string name;
        private readonly IList<IPlanet> planets;
        private readonly IList<IConstellation> constellations;

        public SolarSystem()
        {
            this.Name = name;
            this.planets = new List<IPlanet>();
            this.constellations = new List<IConstellation>();
        }

        public string Name
        {
            get
            {
                return this.name;
            }

            set //private
            {
                ValidateName(value);

                this.name = value;
            }
        }

        private static void ValidateName(string value)
        {
            string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Name");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);

            string invalidValueLengthMessage = string.Format(Global.ErrorMessages.InvalidStringLength,
                "Name", MinNameLength, MaxNameLength);
            Validator.CheckIfStringLengthIsValid(value, MaxNameLength, MinNameLength,
                invalidValueLengthMessage);
        }

	    public override string ToString()
	    {
            var solarSystemAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return solarSystemAllInfo.ToString();
	    }
    }
}
