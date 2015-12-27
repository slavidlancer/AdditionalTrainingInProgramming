using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces.Core.Laws;

namespace DAREintegraTiOn.Core.Laws
{
    public class SimpleLaw : Law, ISimpleLaw
    {
        private string additionalDescription;

        public SimpleLaw(string title, byte number, string figure, char symbol,
            string additionalDescription = null)
            : base(title, number, figure, symbol)
        {
            this.AdditionalDescription = additionalDescription;
        }

        public string AdditionalDescription
        {
            get
            {
                return this.additionalDescription;
            }

            set
            {
                this.additionalDescription = value;
            }
        }
    }
}
