using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces.Core;

namespace DAREintegraTiOn.Core
{
    public abstract class Law : ILaw
    {
        private const byte MinLawNumberValue = 0;
        private const byte MaxLawNumberValue = 100;

        private string mentalIdea;
        private string mentalMeaning;

        private string title;
        private byte number;
        private string figure;
        private char symbol;

        protected Law(string title, byte number = 0, string figure = "", char symbol = ' ')
        {
            this.Title = title;
            this.Number = number;
            this.Figure = figure;
            this.Symbol = symbol;
        }

        public string Title
        {
            get
            {
                return this.title;
            }

            set
            {
                ValidateName(value);

                this.title = value;
            }
        }

        public byte Number
        {
            get
            {
                return this.number;
            }

            set
            {
                ValidateNumber(value);

                this.number = value;
            }
        }

        public string Figure
        {
            get
            {
                return this.figure;
            }

            set
            {
                this.figure = value;
            }
        }

        public char Symbol
        {
            get
            {
                return this.symbol;
            }

            set
            {
                this.symbol = value;
            }
        }

        public virtual string MentalIdea
        {
            get
            {
                return this.mentalIdea;
            }

            set
            {
                this.mentalIdea = value;
            }
        }

        public virtual string MentalMeaning
        {
            get
            {
                return this.mentalMeaning;
            }

            set
            {
                this.mentalMeaning = value;
            }
        }

        private void ValidateName(string value)
        {
            string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Law attribute");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);
        }

        private void ValidateNumber(byte value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Number",
                MinLawNumberValue, MaxLawNumberValue);
            Validator.CheckIfNumberValueIsValid(value, MaxLawNumberValue, MinLawNumberValue,
                invalidNumberValueMessage);
        }
    }
}
