using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System.Text;

namespace DAREintegraTiOn.Models
{
    public struct SizesMeasures : ISizesMeasures
    {
        private const int MinMeasureValue = 0;
        private const int MaxMeasureValue = 1000000;

        private double height;
        private double width;
        private double weight;

        public SizesMeasures(double height = 0, double width = 0, double weight = 0)
		    : this()
        {
            this.Height = height;
            this.Width = width;
            this.Weight = weight;
        }

	    public double Height
        {
            get
            {
                return this.height;
            }

            set
            {
                ValidateMeasures(value);

                this.height = value;
            }
        }

        public double Width
        {
            get
            {
                return this.width;
            }

            set
            {
                ValidateMeasures(value);

                this.width = value;
            }
        }

        public double Weight
        {
            get
            {
                return this.weight;
            }

            set
            {
                ValidateMeasures(value);

                this.weight = value;
            }
        }

        private void ValidateMeasures(double value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Measure",
                MinMeasureValue, MaxMeasureValue);
            Validator.CheckIfNumberValueIsValid((int)value, MaxMeasureValue, MinMeasureValue,
                invalidNumberValueMessage);
        }

        public string GetAllMeasures()
        {
            var allMeasures = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return allMeasures.ToString();
        }
    }
}
