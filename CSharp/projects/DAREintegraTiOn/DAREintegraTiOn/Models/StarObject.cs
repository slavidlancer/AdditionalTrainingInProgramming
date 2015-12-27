using DAREintegraTiOn.Global;
using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn.Models
{
    public abstract class StarObject : Creature, IStarObject
    {
        private const int MinNumberValue = 0;
        private const int MaxNumberValue = 1000;

        private int energyCapacity;

        protected StarObject(string name, int age, ColorType color, SizesMeasures sizes,
            byte personalNumber, char symbol, bool isReal, int energyCapacity)
            : base(name, age, color, sizes, personalNumber, symbol, isReal)
        {
            this.EnergyCapacity = energyCapacity;
        }

        public int EnergyCapacity
        {
            get
            {
                return this.energyCapacity;
            }

            set //private
            {
                ValidateNumber(value);

                this.energyCapacity = value;
            }
        }

        private void ValidateNumber(int value)
        {
            string invalidNumberValueMessage = string.Format(Global.ErrorMessages.InvalidNumberValue, "Energy Capacity",
                MinNumberValue, MaxNumberValue);
            Validator.CheckIfNumberValueIsValid(value, MaxNumberValue, MinNumberValue,
                invalidNumberValueMessage);
        }
    }
}
