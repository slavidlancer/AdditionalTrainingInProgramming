using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces.Core.Laws;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Core.Laws
{
    public class MajorLaw : Law, IMajorLaw
    {
        private string vulgarTitle;
        private string archetypeMeaning;
        private string humanityMeaning;
        private string natureMeaning;
        private string lawDescription;
        private string shortDescription;
        private string astrologicalSign;
        private bool hasPlanetRelation;
        private bool hasZodiacusRelation;
        private StringBuilder tarotCardDescription;
        private readonly IDictionary<string, char> letters; //= new Dictionary<string, char>(); //(latin/greek/hebrew/enochian/cyrillic)

        public MajorLaw(string title, byte number, string figure, char symbol, string vulgarTitle,
            string archetypeMeaning, string humanityMeaning, string natureMeaning,
            string lawDescription, string shortDescription, string astrologicalSign, bool hasPlanetRelation,
            bool hasZodiacusRelation) //Dictionary<string, char> letters //StringBuilder tarotCardDescription = null
            : base(title, number, figure, symbol)
        {
            this.VulgarTitle = vulgarTitle;
            this.ArchetypeMeaning = archetypeMeaning;
            this.HumanityMeaning = humanityMeaning;
            this.NatureMeaning = natureMeaning;
            this.LawDescription = lawDescription;
            this.ShortDescription = shortDescription;
            this.AstrologicalSign = astrologicalSign;
            this.HasPlanetRelation = hasPlanetRelation;
            this.HasZodiacusRelation = hasZodiacusRelation;
            this.tarotCardDescription = new StringBuilder();
            this.letters = new Dictionary<string, char>();
        }

        public string VulgarTitle
        {
            get
            {
                return this.vulgarTitle;
            }

            set
            {
                ValidateName(value);

                this.vulgarTitle = value;
            }
        }

        public string ArchetypeMeaning
        {
            get
            {
                return this.archetypeMeaning;
            }

            set
            {
                ValidateName(value);

                this.archetypeMeaning = value;
            }
        }

        public string HumanityMeaning
        {
            get
            {
                return this.humanityMeaning;
            }

            set
            {
                ValidateName(value);

                this.humanityMeaning = value;
            }
        }

        public string NatureMeaning
        {
            get
            {
                return this.natureMeaning;
            }

            set
            {
                ValidateName(value);

                this.natureMeaning = value;
            }
        }

        public string LawDescription
        {
            get
            {
                return this.lawDescription;
            }

            set
            {
                ValidateName(value);

                this.lawDescription = value;
            }
        }

        public string ShortDescription
        {
            get
            {
                return this.shortDescription;
            }

            set
            {
                ValidateName(value);

                this.shortDescription = value;
            }
        }

        public string AstrologicalSign
        {
            get
            {
                return this.astrologicalSign;
            }

            set
            {
                ValidateName(value);

                this.astrologicalSign = value;
            }
        }

        public bool HasPlanetRelation
        {
            get
            {
                return this.hasPlanetRelation;
            }

            set
            {
                this.hasPlanetRelation = value;
            }
        }

        public bool HasZodiacusRelation
        {
            get
            {
                return this.hasZodiacusRelation;
            }

            set
            {
                this.hasZodiacusRelation = value;
            }
        }

        public StringBuilder TarotCardDescription
        {
            get
            {
                return this.tarotCardDescription;
            }
        }
        

        public IDictionary<string, char> Letters
        { 
            get
            {
                return this.letters;
            }
        }
        
        private static void ValidateName(string value)
        {
            string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Law attribute");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);
        }

        /*
        protected void AppendTarotCardDescription(string description)
        {
            this.tarotCardDescription.Append(description);
        }*/

        /*
        protected void AddLetter(string alphabet, char letter)
        {
            this.letters.Add(alphabet, letter);
        }*/
    }
}
