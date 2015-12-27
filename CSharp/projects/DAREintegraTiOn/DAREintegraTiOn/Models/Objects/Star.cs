using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System.Text;

namespace DAREintegraTiOn.Models.Objects
{
    public class Star : StarObject, IStar
    {
        private const int MinNumberValue = 0;
        private const int MaxNumberValue = 1000;

        private double brightness;
        private string shortDescription;

        public Star(string name, int age, ColorType color, SizesMeasures sizes,
            byte personalNumber, char symbol, bool isReal, int energyCapacity, double brightness,
            string shortDescription = null)
            : base(name, age, color, sizes, personalNumber, symbol, isReal, energyCapacity)
        {
            this.Brightness = brightness;
            this.ShortDescription = shortDescription;
        }

        public double Brightness
        {
            get
            {
                return this.brightness;
            }

            set //private
            {
                ValidateNumber(value);

                this.brightness = value;
            }
        }

        public string ShortDescription
        {
            get
            {
                return this.shortDescription;
            }

            set //private
            {
                this.shortDescription = value;
            }
        }

        private void ValidateNumber(double value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Brightness",
                MinNumberValue, MaxNumberValue);
            Validator.CheckIfNumberValueIsValid((int)value, MaxNumberValue, MinNumberValue,
                invalidNumberValueMessage);
        }

	    public override string ToString()
	    {
            var starAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return starAllInfo.ToString();
	    }
    }
}
