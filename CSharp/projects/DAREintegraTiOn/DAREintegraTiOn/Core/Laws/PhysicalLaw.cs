using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces.Core.Laws;

namespace DAREintegraTiOn.Core.Laws
{
    public class PhysicalLaw : Law, IPhysicalLaw
    {
        private string description;

        public PhysicalLaw(string title, string description = null, byte number = 0, string figure = "unknown",
            char symbol = ' ')
            : base(title, number, figure, symbol)
        {
            this.Description = description;
        }

        public string Description
        {
            get
            {
                return this.description;
            }

            set
            {
                ValidateName(value);

                this.description = value;
            }
        }

        private static void ValidateName(string value)
        {
            string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Law attribute");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);
        }
    }
}
