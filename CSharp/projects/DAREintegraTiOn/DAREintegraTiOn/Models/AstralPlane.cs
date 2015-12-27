using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn.Models
{
    public sealed class AstralPlane : IAstralPlane
    {
        private string astralForm;
        private string astralMeaning;

        private AstralPlane(string astralForm = null, string astralMeaning = null)
        {
            this.AstralForm = astralForm;
            this.AstralMeaning = astralMeaning;
        }

        public string AstralForm
        {
            get
            {
                return this.astralForm;
            }

            set
            {
                //ValidateName(value);

                this.astralForm = value;
            }
        }

        public string AstralMeaning
        {
            get
            {
                return this.astralMeaning;
            }

            set
            {
                //ValidateName(value);

                this.astralMeaning = value;
            }
        }
    }
}
