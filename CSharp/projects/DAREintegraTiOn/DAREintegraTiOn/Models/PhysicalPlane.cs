using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn.Models
{
    public sealed class PhysicalPlane : IPhysicalPlane
    {
        private string physicalObject;
        private string physicalMeaning;

        private PhysicalPlane(string physicalObject = null, string physicalMeaning = null)
        {
            this.PhysicalObject = physicalObject;
            this.PhysicalMeaning = physicalMeaning;
        }

        public string PhysicalObject
        {
            get
            {
                return this.physicalObject;
            }

            set
            {
                //ValidateName(value);

                this.physicalObject = value;
            }
        }

        public string PhysicalMeaning
        {
            get
            {
                return this.physicalMeaning;
            }

            set
            {
                //ValidateName(value);

                this.physicalMeaning = value;
            }
        }
    }
}
