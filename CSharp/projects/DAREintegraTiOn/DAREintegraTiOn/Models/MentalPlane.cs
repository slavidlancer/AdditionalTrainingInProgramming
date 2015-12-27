using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn.Models
{
    public sealed class MentalPlane : IMentalPlane
    {
        private string mentalIdea;
        private string mentalMeaning;

        private MentalPlane(string mentalIdea = null, string mentalMeaning = null)
        {
            this.MentalIdea = mentalIdea;
            this.MentalMeaning = mentalMeaning;
        }

        public string MentalIdea
        {
            get
            {
                return this.mentalIdea;
            }

            set
            {
                //ValidateName(value);

                this.mentalIdea = value;
            }
        }

        public string MentalMeaning
        {
            get
            {
                return this.mentalMeaning;
            }

            set
            {
                //ValidateName(value);

                this.mentalMeaning = value;
            }
        }
    }
}
