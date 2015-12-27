using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System.Collections.Generic;

namespace DAREintegraTiOn.Models
{
    public abstract class ElementalObject : Creature, IElementalObject
    {
        private string staticMeaning;
        private string dynamicMeaning;
        private string virtue;
        private readonly IDictionary<string, IList<string>> meanings;

        protected ElementalObject(string name, int age, ColorType color, SizesMeasures sizes, byte personalNumber,
            char symbol, bool isReal, string staticMeaning, string dynamicMeaning, string virtue)
            : base(name, age, color, sizes, personalNumber, symbol, isReal)
        {
            this.StaticMeaning = staticMeaning;
            this.DynamicMeaning = dynamicMeaning;
            this.Virtue = virtue;
            this.meanings = new Dictionary<string, IList<string>>();
        }

        public virtual string StaticMeaning
        {
            get
            {
                return this.staticMeaning;
            }

            set //private
            {
                ValidateString(value);

                this.staticMeaning = value;
            }
        }

        public virtual string DynamicMeaning
        {
            get
            {
                return this.dynamicMeaning;
            }

            set //private
            {
                ValidateString(value);

                this.dynamicMeaning = value;
            }
        }

        public virtual string Virtue
        {
            get
            {
                return this.virtue;
            }

            set //private
            {
                ValidateString(value);

                this.virtue = value;
            }
        }

        private void ValidateString(string value)
        {
            string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Elemental attribute");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);
        }
    }
}
