using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects
{
    public class Galaxy : World, IGalaxy
    {
        private const int MinNameLength = 2;
        private const int MaxNameLength = 22;

        private const byte MinPercentValue = 0;
        private const byte MaxPercentValue = 100;

        private string name;
        private byte blackHolesPercentage;
        private readonly IList<ISolarSystem> solarSystems;

        public Galaxy(string name, byte blackHolesPercentage)
        {
            this.Name = name;
            this.BlackHolesPercentage = blackHolesPercentage;
            this.solarSystems = new List<ISolarSystem>();
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

        public byte BlackHolesPercentage
        {
            get
            {
                return this.blackHolesPercentage;
            }

            set
            {
                ValidateNumber(value);

                this.blackHolesPercentage = value;
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

        private static void ValidateNumber(byte value)
        {
            string invalidPercentValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue,
                "Black Holes Percentage", MinPercentValue, MaxPercentValue);
            Validator.CheckIfNumberValueIsValid(value, MaxPercentValue, MinPercentValue,
                invalidPercentValueMessage);
        }

	    public override string ToString()
	    {
            var galaxyAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return galaxyAllInfo.ToString();
	    }
    }
}
