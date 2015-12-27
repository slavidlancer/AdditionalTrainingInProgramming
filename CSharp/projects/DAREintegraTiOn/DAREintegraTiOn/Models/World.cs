using DAREintegraTiOn.Core;
using DAREintegraTiOn.Interfaces;

namespace DAREintegraTiOn.Models.Objects
{
    public abstract class World : Creator, IWorld
    {
        private string astralForm;
        private string astralMeaning;
        private string physicalObject;
        private string physicalMeaning;

        protected World(string astralForm = null, string astralMeaning = null, string physicalObject = null,
            string physicalMeaning = null)
		    : base()
        {
            this.AstralForm = astralForm;
            this.AstralMeaning = astralMeaning;
            this.PhysicalObject = physicalObject;
            this.PhysicalMeaning = physicalMeaning;
        }

        /*public class sys : System
        {
            private IMinorLaw laww = new MinorLaw("", "");

            public sys()
            {
                this.AddMinorLaw(this.laww);
            }
        }*/
        
        public virtual string AstralForm
        {
            get
            {
                return this.astralForm;
            }

            set
            {
                this.astralForm = value;
            }
        }

        public virtual string AstralMeaning
        {
            get
            {
                return this.astralMeaning;
            }

            set
            {
                this.astralMeaning = value;
            }
        }

        public virtual string PhysicalObject
        {
            get
            {
                return this.physicalObject;
            }

            set
            {
                this.physicalObject = value;
            }
        }

        public virtual string PhysicalMeaning
        {
            get
            {
                return this.physicalMeaning;
            }

            set
            {
                this.physicalMeaning = value;
            }
        }
    }
}
