using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using DAREintegraTiOn.Models.Objects;
using System;
using System.Text;

namespace DAREintegraTiOn.Models
{
    public abstract class Creature : World, ICreature
    {
	    private const int MinCreatureNameLength = 2;
        private const int MaxCreatureNameLength = 22;
        private const int MinCreatureAgeValue = 0;
        private const int MaxCreatureAgeValue = Int32.MaxValue;
        private const byte MinNumberValue = 0;
        private const byte MaxNumberValue = byte.MaxValue;
        
	    private string name;
        private int age;
        private ColorType color;
        private SizesMeasures sizes;
        private byte personalNumber;
        private char symbol;
        private string symbolFigure;
        private bool isReal;
        //private StringBuilder optionalDescription;

        protected Creature(string name, int age, ColorType color, SizesMeasures sizes, byte personalNumber, char symbol,
            bool isReal, string symbolFigure = null, StringBuilder optionalDescription = null)
		    : base()
        {
		    this.Name = name;
            this.Age = age;
            this.Color = color;
            this.Sizes = sizes;
            this.PersonalNumber = personalNumber;
            this.Symbol = symbol;
            this.SymbolFigure = symbolFigure;
            this.IsReal = isReal;
            
            //this.OptionalDescription = optionalDescription; //new StringBuilder();
        }

	    public virtual string Name
	    {
		    get
		    {
	    		return this.name;
	    	}

	    	set //private
	    	{
		    	/*if (string.null(value))
		    	{
				throw new NullException("name", "text");
		    	}*/
	    		ValidateName(value);

		    	this.name = value;
		    }
	    }

        public virtual int Age
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

        public virtual ColorType Color
        {
            get
            {
                return this.color;
            }

            set //private
            {
                ValidateObject(value);

                this.color = value;
            }
        }

        public virtual SizesMeasures Sizes
        {
            get
            {
                return this.sizes;
            }

            set //private
            {
                ValidateObject(value);

                this.sizes = value;
            }
        }

        public virtual byte PersonalNumber
        {
            get
            {
                return this.personalNumber;
            }

            set //private
            {
                ValidateNumber(value);

                this.personalNumber = value;
            }
        }

        public virtual char Symbol
        {
            get
            {
                return this.symbol;
            }

            set //private
            {
                this.symbol = value;
            }
        }

        public virtual string SymbolFigure
        {
            get
            {
                return this.symbolFigure;
            }

            set //private
            {
                //ValidateSymbol(value);

                this.symbolFigure = value;
            }
        }

        public virtual bool IsReal
        {
            get
            {
                return this.isReal;
            }

            set //private
            {
                this.isReal = value;
            }
        }

        /*public virtual StringBuilder OptionalDescription
        {
            get
            {
                return this.optionalDescription;
            }

            set //private
            {
                this.optionalDescription.Append(value);
            }
        }*/

    	private static void ValidateName(string value)
        {
		    string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Creature name");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);

	        string invalidValueLengthMessage = string.Format(Global.ErrorMessages.InvalidStringLength,
                "Creature name", MinCreatureNameLength, MaxCreatureNameLength);
            Validator.CheckIfStringLengthIsValid(value, MaxCreatureNameLength, MinCreatureNameLength,
                invalidValueLengthMessage);
    	}

        private static void ValidateAge(int value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Age",
                MinCreatureAgeValue, MaxCreatureAgeValue);
            Validator.CheckIfNumberValueIsValid(value, MaxCreatureAgeValue, MinCreatureAgeValue,
                invalidNumberValueMessage);
        }

        private static void ValidateObject(object value)
        {
            Validator.CheckIfNull(value, string.Format(Global.ErrorMessages.ObjectCannotBeNull, "Color"));
        }

        private static void ValidateNumber(byte value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Number",
                MinNumberValue, MaxNumberValue);
            Validator.CheckIfNumberValueIsValid(value, MaxNumberValue, MinNumberValue,
                invalidNumberValueMessage);
        }
    }
}
