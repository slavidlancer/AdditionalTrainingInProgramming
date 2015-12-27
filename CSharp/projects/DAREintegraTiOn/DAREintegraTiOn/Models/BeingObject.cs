using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn.Models
{
    public abstract class BeingObject : Creature, IBeingObject
    {
        private const int MinCreatureAgeValue = 0;
        private const int MaxCreatureAgeValue = 1000;

        private int age;
        private GenderType gender;
        private string breed;
        private string type;

        protected BeingObject(string name, int age, ColorType color, SizesMeasures sizes, byte personalNumber,
            char symbol, bool isReal, GenderType gender, string type, string breed)
            : base(name, age, color, sizes, personalNumber, symbol, isReal)
        {
		    this.Gender = gender;
            this.type = type;
            this.Breed = breed;
        }

        public override int Age
        {
            get
            {
                return this.age;
            }

            set //private
            {
                ValidateAge(value);

                this.age = value;
            }
        }

        public GenderType Gender
	    {
		    get
		    {
			    return this.gender;
		    }

		    set //private
		    {
			    /*if (string.null(value))
		    	{
			    	throw new NullException("name", "text");
		    	}*/
			    ValidateGender(value);

			    this.gender = value;
		    }
	    }

        public string Type
        {
            get
            {
                return this.type;
            }

            set //private
            {
                ValidateStringValue(value);

                this.type = value;
            }
        }

        public string Breed
        {
            get
            {
                return this.breed;
            }

            set //private
            {
                ValidateStringValue(value);

                this.breed = value;
            }
        }

        public string[] EnergyCenters { get; set; }
        public double energyCapacity { get; set; }

        private static void ValidateAge(int value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Age",
                MinCreatureAgeValue, MaxCreatureAgeValue);
            Validator.CheckIfNumberValueIsValid(value, MaxCreatureAgeValue, MinCreatureAgeValue,
                invalidNumberValueMessage);
        }

        private static void ValidateGender(GenderType value)
        {
		    Validator.CheckIfNull(value, string.Format(Global.ErrorMessages.ObjectCannotBeNull, "Gender"));
	    }

        private void ValidateStringValue(string value)
        {
            throw new global::System.NotImplementedException();
        }
    }
}
