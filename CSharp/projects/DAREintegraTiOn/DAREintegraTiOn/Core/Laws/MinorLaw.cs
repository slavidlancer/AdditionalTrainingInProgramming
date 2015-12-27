using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces.Core.Laws;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Core.Laws
{
    public class MinorLaw : Law, IMinorLaw
    {
        private string meaning;
        private string[] otherNames;

        public MinorLaw(string title, string meaning, params string[] otherNames)
            : base(title)
        {
            this.Meaning = meaning;
            this.OtherNames = otherNames;
        }

        public string Meaning
        {
            get
            {
                return this.meaning;
            }

            set
            {
                ValidateName(value);

                this.meaning = value;
            }
        }

        public string[] OtherNames
        {
            get
            {
                return this.otherNames;
            }

            set
            {
                this.otherNames = value;
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
