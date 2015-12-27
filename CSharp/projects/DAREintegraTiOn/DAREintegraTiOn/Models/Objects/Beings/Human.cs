using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects.Beings
{
    public class Human : BeingObject, IHuman
    {
        private const int MinHumanNameLength = 2;
        private const int MaxHumanNameLength = 22;

        private string secondName;
        private string lastName;
        private DateTime birthInfo;
        private string email;
        private bool isInitiated;
        private bool isPractising;
        private bool isGraduated;
        private readonly IList<string> skills;
        private readonly IList<IElementalObject> elementals;

        public Human(string name, int age, ColorType color, SizesMeasures sizes, byte personalNumber, char symbol,
            bool isReal, GenderType gender, string type, string breed, string secondName, string lastName,
            DateTime birthInfo, string email = null, bool isInitiated = false, bool isPractising = false,
            bool isGraduated = false)
            : base(name, age, color, sizes, personalNumber, symbol, isReal, gender, type, breed)
        {
            this.SecondName = secondName;
            this.LastName = lastName;
            this.BirthInfo = birthInfo;
            this.Email = email;
            this.IsInitiated = isInitiated;
            this.IsPractising = isPractising;
            this.IsGraduated = isGraduated;
            this.skills = new List<string>();
            this.elementals = new List<IElementalObject>();
        }

        public string SecondName
        {
            get
            {
                return this.secondName;
            }

            set //private
            {
                ValidateName(value);

                this.secondName = value;
            }
        }

        public string LastName
        {
            get
            {
                return this.lastName;
            }

            set //private
            {
                ValidateName(value);

                this.lastName = value;
            }
        }

        public DateTime BirthInfo
        {
            get
            {
                return this.birthInfo;
            }

            set //private
            {
                //ValidateDate(value);

                this.birthInfo = value;
            }
        }

        public string Email
        {
            get
            {
                return this.email;
            }

            set //private
            {
                ValidateEmail(value);

                this.email = value;
            }
        }

        public bool IsInitiated
        {
            get
            {
                return this.isInitiated;
            }

            set //private
            {
                this.isInitiated = value;
            }
        }

        public bool IsPractising
        {
            get
            {
                return this.isPractising;
            }

            set //private
            {
                this.isPractising = value;
            }
        }

        public bool IsGraduated
        {
            get
            {
                return this.isGraduated;
            }

            set //private
            {
                this.isGraduated = value;
            }
        }

        private void ValidateName(string value)
        {
            string emptyValueMessage = string.Format(Global.ErrorMessages.StringCannotBeNullOrEmpty,
                "Name");
            Validator.CheckIfStringIsNullOrEmpty(value, emptyValueMessage);

            string invalidValueLengthMessage = string.Format(Global.ErrorMessages.InvalidStringLength,
                "Name", MinHumanNameLength, MaxHumanNameLength);
            Validator.CheckIfStringLengthIsValid(value, MaxHumanNameLength, MinHumanNameLength,
                invalidValueLengthMessage);
        }

        private void ValidateEmail(string value)
        {
            throw new NotImplementedException();
        }

	    public override string ToString()
	    {
            var humanAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/
            
		    return humanAllInfo.ToString();
	    }
    }
}
